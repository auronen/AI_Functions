// This file is included separately for each engine version
namespace GOTHIC_NAMESPACE
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

//     void Game_EntryPoint()
// 	{
// #ifdef _prints
//         Union::String::Format("Game entry point").StdPrintLine();
//         std::cout << "Game entry point" << std::endl;
// #endif
// 	}

#define EXT_MESSAGE "AI_Functions.dll: Defining externals"

	void Game_DefineExternals()
	{
        Union::String::Format(EXT_MESSAGE).StdPrintLine();
        std::cout << EXT_MESSAGE << std::endl;

		// Use boguś's https://github.com/bogu9821/BetterDaedalusExternals
		// when they support new API :hihi:
        parser->DefineExternal("AI_CallFunction",
                          AI_CallFunction,
                          zPAR_TYPE_VOID,
                          zPAR_TYPE_INSTANCE, zPAR_TYPE_FUNC,
                          zPAR_TYPE_VOID);
	}

	// void Game_Init()
	// {

	// }

	// void Game_Exit()
	// {

	// }

	// void Game_PreLoop()
	// {

	// }

	// void Game_Loop()
	// {
    //     // screen->Print(200, 200, "Hello from plugin cmake template thing");
    //     // Union::String::Format("\n\nHello from plugin cmake template thing\n\n").StdPrintLine();
    //     // std::cout << "\n\nHello from plugin cmake template thing\n\n" << std::endl;
	// }

	// void Game_PostLoop()
	// {

	// }

	// void Game_MenuLoop()
	// {

	// }

	// void Game_SaveBegin()
	// {

	// }

	// void Game_SaveEnd()
	// {

	// }

	// void LoadBegin()
	// {

	// }

	// void LoadEnd()
	// {

	// }

	// void Game_LoadBegin_NewGame()
	// {
	// 	LoadBegin();
	// }

	// void Game_LoadEnd_NewGame()
	// {
	// 	LoadEnd();
	// }

	// void Game_LoadBegin_SaveGame()
	// {
	// 	LoadBegin();
	// }

	// void Game_LoadEnd_SaveGame()
	// {
	// 	LoadEnd();
	// }

	// void Game_LoadBegin_ChangeLevel()
	// {
	// 	LoadBegin();
	// }

	// void Game_LoadEnd_ChangeLevel()
	// {
	// 	LoadEnd();
	// }

	// void Game_LoadBegin_TriggerChangeLevel()
	// {

	// }

	// void Game_LoadEnd_TriggerChangeLevel()
	// {

	// }

	// void Game_Pause()
	// {

	// }

	// void Game_Unpause()
	// {

	// }

	// void Game_ApplySettings()
	// {

	// }

	// int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd);
	// auto Hook_WinMain = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x004F3E10, 0x00506810, 0x005000F0, 0x00502D70)), &WinMain, Union::HookType::Hook_Detours);
	// int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
	// {
	// 	int result = Hook_WinMain(hInstance, hPrevInstance, lpCmdLine, nShowCmd);
	// 	Game_EntryPoint();

	// 	return result;
	// }

	// void __fastcall oCGame_Init(oCGame* self, void* vtable);
	// auto Hook_oCGame_Init = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x00636F50, 0x0065D480, 0x006646D0, 0x006C1060)), &oCGame_Init, Union::HookType::Hook_Detours);
	// void __fastcall oCGame_Init(oCGame* self, void* vtable)
	// {
	// 	Hook_oCGame_Init(self, vtable);
	// 	Game_Init();
	// }

	// void __fastcall CGameManager_Done(CGameManager* self, void* vtable);
	// auto Hook_CGameManager_Done = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x00424850, 0x00427310, 0x004251A0, 0x004254E0)), &CGameManager_Done, Union::HookType::Hook_Detours);
	// void __fastcall CGameManager_Done(CGameManager* self, void* vtable)
	// {
	// 	Game_Exit();
	// 	Hook_CGameManager_Done(self, vtable);
	// }

	// void __fastcall oCGame_Render(oCGame* self, void* vtable);
	// auto Hook_oCGame_Render = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063DBE0, 0x006648F0, 0x0066B930, 0x006C86A0)), &oCGame_Render, Union::HookType::Hook_Detours);
	// void __fastcall oCGame_Render(oCGame* self, void* vtable)
	// {
	// 	Game_PreLoop();
	// 	Hook_oCGame_Render(self, vtable);
	// 	Game_PostLoop();
	// }

	// void __fastcall zCWorld_Render(Union::Registers& reg);
	// auto Partial_zCWorld_Render = Union::CreatePartialHook(reinterpret_cast<void*>(zSwitch(0x005F409C, 0x00614F4C, 0x0061A1F0, 0x00621940)), &zCWorld_Render);
	// void __fastcall zCWorld_Render(Union::Registers& reg)
	// {
	// 	Game_Loop();
	// 	// Partial_zCWorld_Render(reg);
	// }

// 	void __fastcall zCMenu_Render(zCMenu* self, void* vtable);
// 	auto Hook_zCMenu_Render = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x004D0DA0, 0x004E14E0, 0x004DB270, 0x004DDC20)), &zCMenu_Render, Union::HookType::Hook_Detours);
// 	void __fastcall zCMenu_Render(zCMenu* self, void* vtable)
// 	{
// 		Hook_zCMenu_Render(self, vtable);
// 		Game_MenuLoop();
// 	}

// 	void __fastcall oCGame_WriteSaveGame(oCGame* self, void* vtable, int slot, zBOOL saveGlobals);
// 	auto Hook_oCGame_WriteSaveGame = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063AD80, 0x00661680, 0x006685D0, 0x006C5250)), &oCGame_WriteSaveGame, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_WriteSaveGame(oCGame* self, void* vtable, int slot, zBOOL saveGlobals)
// 	{
// 		Game_SaveBegin();
// 		Hook_oCGame_WriteSaveGame(self, vtable, slot, saveGlobals);
// 		Game_SaveEnd();
// 	}

// 	void __fastcall oCGame_LoadGame(oCGame* self, void* vtable, int slot, const zSTRING& levelPath);
// 	auto Hook_oCGame_LoadGame = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063C070, 0x00662B20, 0x00669970, 0x006C65A0)), &oCGame_LoadGame, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_LoadGame(oCGame* self, void* vtable, int slot, const zSTRING& levelPath)
// 	{
// 		Game_LoadBegin_NewGame();
// 		Hook_oCGame_LoadGame(self, vtable, slot, levelPath);
// 		Game_LoadEnd_NewGame();
// 	}

// 	void __fastcall oCGame_LoadSaveGame(oCGame* self, void* vtable, int slot, zBOOL loadGlobals);
// 	auto Hook_oCGame_LoadSaveGame = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063C2A0, 0x00662D60, 0x00669BA0, 0x006C67D0)), &oCGame_LoadSaveGame, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_LoadSaveGame(oCGame* self, void* vtable, int slot, zBOOL loadGlobals)
// 	{
// 		Game_LoadBegin_SaveGame();
// 		Hook_oCGame_LoadSaveGame(self, vtable, slot, loadGlobals);
// 		Game_LoadEnd_SaveGame();
// 	}

// 	void __fastcall oCGame_ChangeLevel(oCGame* self, void* vtable, const zSTRING& levelpath, const zSTRING& startpoint);
// 	auto Hook_Game_Load_ChangeLevel = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063CD60, 0x00663950, 0x0066A660, 0x006C7290)), &oCGame_ChangeLevel, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_ChangeLevel(oCGame* self, void* vtable, const zSTRING& levelpath, const zSTRING& startpoint)
// 	{
// 		Game_LoadBegin_ChangeLevel();
// 		Hook_Game_Load_ChangeLevel(self, vtable, levelpath, startpoint);
// 		Game_LoadEnd_ChangeLevel();
// 	}

// 	void __fastcall oCGame_TriggerChangeLevel(oCGame* self, void* vtable, const zSTRING& levelpath, const zSTRING& startpoint);
// 	auto Hook_oCGame_TriggerChangeLevel = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063D480, 0x00664100, 0x0066AD80, 0x006C7AF0)), &oCGame_TriggerChangeLevel, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_TriggerChangeLevel(oCGame* self, void* vtable, const zSTRING& levelpath, const zSTRING& startpoint)
// 	{
// 		Game_LoadBegin_TriggerChangeLevel();
// 		Hook_oCGame_TriggerChangeLevel(self, vtable, levelpath, startpoint);
// 		Game_LoadEnd_TriggerChangeLevel();
// 	}

// #if ENGINE <= Engine_G1A
// 	void __fastcall oCGame_Pause_G1(oCGame* self, void* vtable);
// 	auto Hook_oCGame_Pause = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063DF50, 0x00664CD0, 0, 0)), &oCGame_Pause_G1, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_Pause_G1(oCGame* self, void* vtable)
// 	{
// 		Hook_oCGame_Pause(self, vtable);
// 		Game_Pause();
// 	}
// #else
// 	void __fastcall oCGame_Pause_G2(oCGame* self, void* vtable, zBOOL sessionPaused);
// 	auto Hook_oCGame_Pause = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0, 0, 0x0066BD50, 0x006C8AD0)), &oCGame_Pause_G2, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_Pause_G2(oCGame* self, void* vtable, zBOOL sessionPaused)
// 	{
// 		Hook_oCGame_Pause(self, vtable, sessionPaused);
// 		Game_Pause();
// 	}
// #endif

// 	void __fastcall oCGame_Unpause(oCGame* self, void* vtable);
// 	auto Hook_oCGame_Unpause = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x0063E1D0, 0x00664F80, 0x0066BFD0, 0x006C8D50)), &oCGame_Unpause, Union::HookType::Hook_Detours);
// 	void __fastcall oCGame_Unpause(oCGame* self, void* vtable)
// 	{
// 		Hook_oCGame_Unpause(self, vtable);
// 		Game_Unpause();
// 	}

	void __fastcall oCGame_DefineExternals_Ulfi(oCGame* self, void* vtable, zCParser* parser);
	auto Hook_oCGame_DefineExternals_Ulfi = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x006495B0, 0x006715F0, 0x00677A00, 0x006D4780)), &oCGame_DefineExternals_Ulfi, Union::HookType::Hook_Detours);
	void __fastcall oCGame_DefineExternals_Ulfi(oCGame* self, void* vtable, zCParser* parser)
	{
		Hook_oCGame_DefineExternals_Ulfi(self, vtable, parser);
		Game_DefineExternals();
	}

	// void __fastcall CGameManager_ApplySomeSettings(CGameManager* self, void* vtable);
	// auto Hook_CGameManager_ApplySomeSettings = Union::CreateHook(reinterpret_cast<void*>(zSwitch(0x004267C0, 0x004291E0, 0x00427370, 0x004276B0)), &CGameManager_ApplySomeSettings, Union::HookType::Hook_Detours);
	// void __fastcall CGameManager_ApplySomeSettings(CGameManager* self, void* vtable)
	// {
	// 	Hook_CGameManager_ApplySomeSettings(self, vtable);
	// 	Game_ApplySettings();
	// }
}
