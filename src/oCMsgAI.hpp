#include <cassert>
#include <utility>

namespace GOTHIC_NAMESPACE {
    using Parameter = std::variant<Int, Float, String, Instance>;

    class oCMsgAI : public oCNpcMessage
    {
    public:
        zCLASS_UNION_DECLARATION(oCMsgAI)

        // maybe we'll have more in the future
        enum AI_type {
            EV_CALLFUNC = 0,
            EV_AI_MAX
        };

        oCMsgAI() {
            this->subType = 0;
        };

        oCMsgAI(AI_type subType, int fn_index, std::vector<Parameter> params, oCNpc* self) {
            this->subType = subType;
            this->function_index = fn_index;
            this->params = std::move(params);
        };
        virtual ~oCMsgAI() {};

        virtual int MD_GetNumOfSubTypes() { return (int)EV_AI_MAX; };
        virtual zSTRING MD_GetSubTypeString(int n) {
            zSTRING result;
            switch (n) {
            case EV_CALLFUNC:
                result = "EV_CALLFUNC";
                break;
            case EV_AI_MAX:
                result = "EV_AI_MAX";
                break;
            default: result = "";
            }
            return result;
        };
        // TODO: Add assers for these irrelevant virtual functions? 
        virtual zSTRING         MD_GetVobRefName() { return "refname ????"; };
        virtual void            MD_SetVobRefName(const zSTRING& name) {};
        virtual void            MD_SetVobParam(zCVob* vob) {};
        virtual zTTimeBehavior  MD_GetTimeBehavior() { return zTTimeBehavior::TBZero;  };
        virtual zREAL           MD_GetMinTime() { return 0.1f;  };
        virtual zBOOL           IsNetRelevant() { return false; };

        int GetFunctionIndex() { return function_index;  }

        int     function_index; // function to be called
        std::vector<Parameter> params;

    protected:

        // Not sure if these archive functions should do something,
        // would be great for the CS system, where you save cutscenes
        // into individual files
        virtual void            Archive(zCArchiver& arc)
        {
            oCNpcMessage::Archive(arc);

            arc.WriteInt("fn_index", function_index);
        };
        virtual void            Unarchive(zCArchiver& arc)
        {
            oCNpcMessage::Unarchive(arc);

            arc.ReadInt("fn_index", function_index);
                };

        // Not sure if these are needed for the CS system also
        virtual void            Pack(zCBuffer& buffer, zCEventManager* evManContext) {};
        virtual void            Unpack(zCBuffer& buffer, zCEventManager* evManContext) {};
    };

    zCLASS_UNION_DEFINITION(oCMsgAI, oCNpcMessage, 0, 0)


    zBOOL EV_CallFunction(oCMsgAI* csg) {
        zCPar_Symbol* fn_sym = parser->GetSymbol(csg->function_index);
        if (fn_sym) {
            parser->CallFunc(csg->function_index, csg->params);
        }
        return true;
    }

    auto Hook_OnMessage = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x006A69E0, 0x006D95F0, 0x006EC360, 0x0074B020)),
                                          &oCNpc::OnMessage_U,
                                          Union::HookType::Hook_Detours);

    void oCNpc::OnMessage_U(zCEventMessage* eventMessage, zCVob* sourceVob)
    {
        if (auto aiMsg = zDYNAMIC_CAST<oCMsgAI>(eventMessage))
        {
            //make sure message won't be deleted on call to the engine
            aiMsg->AddRef();
            // Call the original function
            (this->*Hook_OnMessage)(eventMessage, sourceVob);
           

            int del{};
            switch (csg->GetSubType()) {
            case oCMsgAI::EV_CALLFUNC: del = EV_CallFunction(aiMsg);      break;
            }
            aiMsg->Release();

            if (del) aiMsg->Delete();

            return;
        }

        // Call the original function
        (this->*Hook_OnMessage)(eventMessage, sourceVob);
    }

}