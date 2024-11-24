﻿// Supported with union (c) 2018-2023 Union team
// Licence: GNU General Public License

#ifndef __ZNET_EVENT_MAN_H__VER1__
#define __ZNET_EVENT_MAN_H__VER1__

#include "zEventMan.h"
#include "zNetTypes.h"

namespace Gothic_I_Addon {

  // sizeof 44h
  class zCNetEventManager : public zCEventManager {
  public:
    zCLASS_DECLARATION( zCNetEventManager )

    zCNetVobControl* netVobCtrl; // sizeof 04h    offset 40h

    void zCNetEventManager_OnInit()                                        zCall( 0x00459E90 );
    void zCNetEventManager_OnInit( zCVob* )                                zCall( 0x00459EE0 );
    zCNetEventManager() : zCtor( zCEventManager )                          zInit( zCNetEventManager_OnInit() );
    zCNetEventManager( zCVob* a0 ) : zCtor( zCEventManager )               zInit( zCNetEventManager_OnInit( a0 ));
    void Init()                                                            zCall( 0x00459F10 );
    static zCObject* _CreateNewInstance()                                  zCall( 0x004590C0 );
    static int HandleNetMessage( zCNetMessage*, unsigned short, zCWorld* ) zCall( 0x00459190 );
    virtual zCClassDef* _GetClassDef() const                               zCall( 0x00459180 );
    virtual void Archive( zCArchiver& )                                    zCall( 0x0045BC50 );
    virtual void Unarchive( zCArchiver& )                                  zCall( 0x0045BC80 );
    virtual ~zCNetEventManager()                                           zCall( 0x00459F00 );
    virtual void OnMessage( zCEventMessage*, zCVob* )                      zCall( 0x00459F20 );
    virtual zCNetVobControl* GetNetVobControl( int )                       zCall( 0x0045BD00 );

    // user API
    #include "zCNetEventManager.inl"
  };

} // namespace Gothic_I_Addon

#endif // __ZNET_EVENT_MAN_H__VER1__