/*
 ---------------------------------------------------------------------------
 |          Filterscript creado por Whois                                                               |
 |                                                                          |
 |                 No quitar creditos                                                             |
 |                                                                          |
 ----------------------------------------------------------------------------
*/
#include <a_samp>


//TIEMPO EN MILISEGUNDOS PARA EL PAYDAY
#define TEMPO 1800000
#define Dinheiro 1000
#define Score 1

forward PayDay(playerid);
public PayDay(playerid)
{
    new String[50];
	GivePlayerMoney(playerid,Dinheiro);
	SetPlayerScore(playerid, GetPlayerScore(playerid) + Score);
	SendClientMessage(playerid, 0x0080FFAA, "=======================================");
	SendClientMessage(playerid, 0xFFFF00AA, "       ¡Felicidades por tu Payday!");
	SendClientMessage(playerid, 0x0080FFAA, "=======================================");
	SendClientMessage(playerid, 0xFFFFFFAA, "- {00FF00}+1 Score {FFFFFF}añadido a tu cuenta.");
	SendClientMessage(playerid, 0xFFFFFFAA, "- {00FF00}+ $1000 {FFFFFF}añadidos a tu saldo.");
	SendClientMessage(playerid, 0x0080FFAA, "=======================================");
	SendClientMessage(playerid, 0xFFFF00AA, "   ¡Sigue trabajando para ganar más!");
	SendClientMessage(playerid, 0x0080FFAA, "=======================================");
    format(String, sizeof(String), "~~PayDay~n~~~");
	GameTextForPlayer(playerid, String, 3000, 5);
	return 1;
}
public OnPlayerConnect(playerid)
{
	SetTimerEx("PayDay",TEMPO,1,"i",playerid);
	return 1;
}
//////////////////////////////////////////////Fim//////////////////////////////////////////
