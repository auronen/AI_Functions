// Code for Gothic I Classic engine (G1)

#include <iostream>

namespace Gothic_I_Classic
{
    // There is a problem: 
    //  - we take integers, floats by their current value
    //    (at the time of the push to AI_queue)
    //    and instances and strings by the value they will
    //    have when the function gets executed
    //    but I don't think that it is a huge issue
    int AI_CallFunction() {
        int function = -1;
        oCNpc* self;

        zCParser* p = zCParser::GetParser();
        p->GetParameter(function);
        self = (oCNpc*)p->GetInstance();

#ifdef _prints
        Union::String::Format("AI_CallFunction called from a plugin compiled on Linux").StdPrintLine();
#endif

        if (self) {
            std::vector<Parameter> args;
            zCPar_Symbol* func_sym = p->GetSymbol(function);
            if (func_sym) {
                for (int i = func_sym->ele; i > 0; --i) {
                    zCPar_Symbol* par = p->GetSymbol(function + i);
                    if (par) {
                        switch (par->type) {
                            case zPAR_TYPE_INT:
                            case zPAR_TYPE_FUNC:
                                int i;
                                p->GetParameter(i);
                                args.emplace_back(Int{ i });
                                break;
                            case zPAR_TYPE_FLOAT:
                                float f;
                                p->GetParameter(f);
                                args.emplace_back(Float{ f });
                                break;
                            case zPAR_TYPE_STRING:
                                int string_index;
                                p->datastack.Pop();
                                string_index = p->datastack.Pop();
                                args.emplace_back(String{ string_index });
                                break;
                            case zPAR_TYPE_INSTANCE:
                                int instance_symbol_id;
                                instance_symbol_id = p->datastack.Pop();
                                args.emplace_back(Instance{ instance_symbol_id });
                                break;
                            default:
                                // change this to a message box?
                                Union::String::Format("THIS SHOULD NEVER HAPPEN").StdPrintLine();
                        }
                    }
                }
            }

            self->GetEM(false)->OnMessage(
                new oCMsgAI(oCMsgAI::EV_CALLFUNC, function, args, self),
                self
            );
        }
        else {
            // this is just a warning
            Union::String::Format("AI_CallFunction sync C_NPC was null...").StdPrintLine();
        }
        return TRUE;
    }

    // This is just for testing linux cmake compilation
#if 0
    int cmake() {
        Union::String::Format("\n\nMessage from cmake MSVC on linux\n\n").StdPrintLine();
        std::cout << "\n\nMessage from cmake MSVC on linux\n\n" << std::endl;
        return TRUE;
    }

    auto Hook_ext = Union::CreateHook((void*)0x006495B0, // oCGame::DefineExternals_Ulfi(class zCParser *)
                                            &oCGame::DefineExternals_Union,
                                            Union::HookType::Hook_Detours);
    
    void oCGame::DefineExternals_Union( zCParser * p ) {
        (this->*Hook_ext)(p);
        p->DefineExternal("cmake", cmake, zPAR_TYPE_STRING, zPAR_TYPE_VOID);
    }
#endif
}
