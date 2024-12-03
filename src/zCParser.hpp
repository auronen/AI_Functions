namespace GOTHIC_NAMESPACE
{
    // This should rewriten to accept a Zengin container instead of std::vector
    void zCParser::CallFunc(int function, const std::vector<Parameter>& params) {
        int pos;
        zCPar_Symbol* sym = parser->GetSymbol(function);
        datastack.Clear();

        int i = 1;
        for (auto it = params.rbegin(); it != params.rend(); ++it) {
            std::visit([this, i, function, sym](auto&& arg)
                {
                    using T = std::decay_t<decltype(arg)>;
                    if constexpr (std::is_same_v<T, Int>) {
                        zCPar_Symbol* par = this->GetSymbol(function + i);
                        if (par)
                            par->SetValue(arg.value, 0);
    
                        this->datastack.Push(arg.value);
                        this->datastack.Push(zPAR_TOK_PUSHINT);
                    } else if constexpr (std::is_same_v<T, Float>) {
                        zCPar_Symbol* par = this->GetSymbol(function + i);
                        if (par) 
                            par->SetValue(arg.value, 0);
    
                        this->datastack.Push(*((int*)&arg.value));
                        this->datastack.Push(zPAR_TOK_PUSHINT);
                    }
                    else if constexpr (std::is_same_v<T, String>) {
                        zCPar_Symbol* par = this->GetSymbol(function + i);
                        if (par) 
                            zSTRING* x = (zSTRING*)arg.value;
    
                        this->datastack.Push(arg.value);
                        this->datastack.Push(zPAR_TOK_PUSHVAR);
                    }
                    else if constexpr (std::is_same_v<T, Instance>) {
                        zCPar_Symbol* par = this->GetSymbol(function + i);
                        zCPar_Symbol* inst_sym = this->GetSymbol(arg.value);
                        if (inst_sym && par) {
                            this->datastack.Push(arg.value);
                            // This does not have to be there for some reason
                            //if (!sym->HasFlag(zPAR_FLAG_EXTERNAL))
                                //this->datastack.Push(zPAR_TOK_PUSHINST);
                        } else assert(false && "Instance did not exist");
                    }
                    else assert(false && "Unreachable");
                },
                *it);
            ++i;
        }
    
        if (!sym->HasFlag(zPAR_FLAG_EXTERNAL)) { // Daedalus functions
            curfuncnr = function;
    
            sym->GetStackPos(pos, 0);
            DoStack(pos);
            // clear the remains on the datastack
            datastack.Clear();
            curfuncnr = -1;
        }
        else { // externals
            zBOOL(*proc_cpp)();
            int oldpos;
            int olddebug = debugmode;
            debugmode = FALSE;
    
            cur_parser = this;
            sym->GetStackPos(pos, 0);
            proc_cpp = (zBOOL(__cdecl*)()) pos;
    
            sym = (zCPar_Symbol*)zCPar_Symbol::GetUseInstance();
    
            oldpos = stack.GetPopPos();
            proc_cpp();
            stack.SetPopPos(oldpos);
    
            zCPar_Symbol::SetUseInstance(sym);
    
            debugmode = olddebug;
        }
    }

  /*
    // TODO: Finish parsing code

    void zCParser::DeclareAI_CallFunction_variadic() {
      zSTRING leafNodeName =
          "AI_CALLFUNCTION"; // TODO: Make this a #define or some const maybe
      zSTRING word;

      Match(Z "(");

      // Is a format line - main argument of this function.
      // Should add this argument in the end of procedure.
      zCPar_TreeNode *formatLeaf = CreateStringLeaf();

      // First we parse the instance that holds the AI_Queue
      ReadWord(aword);
      zCPar_TreeNode *instLeaf = CreateLeaf(zPAR_TOK_PUSHINST, treenode);
      instLeaf->name = aword;
      instLeaf->value = GetBaseClass(par);
      instLeaf->info = zPAR_TYPE_INSTANCE;

      // Then we parse the function id
      ReadWord(aword);
      zCPar_TreeNode *funcLeaf = CreateLeaf(zPAR_TOK_PUSHINDEX, treenode);
      funcLeaf->name = aword;

      treenode = CreateLeaf(zPAR_TOK_CALL, treenode);
      treenode->name = leafNodeName;
    }

    auto Hook_DeclareFuncCall = Union::CreateHook((void*)0x0079E7B0,
                                          &zCParser::DeclareFuncCall_U,
                                          Union::HookType::Hook_Detours);

    void zCParser::DeclareFuncCall_U(zSTRING &name, int typematch) {
        string functionName = in_func->name;
        // DynamicLoadExternal(name);

        if (name == "AI_CALLFUNCTION")
            return DeclareAI_CallFunction_variadic();

        // AddNamespace(name);
        this->*Hook_DeclareFuncCall(name, typematch);
    }
  */
}
