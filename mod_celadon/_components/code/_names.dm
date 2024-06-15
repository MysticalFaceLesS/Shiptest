// Перенесено с code\__HELPERS\names.dm | Инициализация префиксов кораблей для дальнейшего использования в конфигах.
#define FACTION_SYNDICATE "Syndicate"
#define FACTION_SOLGOV "SolFed"
#define FACTION_INTEQ "Inteq Risk Management Group"
#define FACTION_NT "Nanotrasen"
#define FACTION_INDEPENDENT "Independent"
#define FACTION_ELYSIUM "Elysium"
#define FACTION_EVENT "Event"
#define FACTION_PIRATES "Pirates"

#define PREFIX_SYNDICATE list("SEV", "SSV", "SMMV", "PCAC", "SSASV", "SSSV", "SOSSV", "TSSV", "SABSV", "BSSV", "ASSV", "MSSV", "LSSV", "DSSV")
#define PREFIX_SOLGOV list("SGSV", "BSFSV", "ASFSV", "SSFSV", "MDSFSV", "LSFSV", "MSFSV", "SPSFSV")
#define PREFIX_INTEQ list("IRMV", "IQMSSV", "BIQSV", "LIQSV", "SPIQSV")
#define PREFIX_NT list("NTSV", "NTBSV", "NTASV", "NTSSV", "NTTSV", "NTMSV", "NTLSV", "NTDSV", "NTSPSV",)
#define PREFIX_INDEPENDENT list("SV", "IMV", "ISV")
#define PREFIX_ELYSIUM list("EUSM", "EUSQ", "EUSF", "EUSR",)
#define PREFIX_PIRATES list("PIRATE")
#define PREFIX_EVENT list("CLO")

GLOBAL_LIST_INIT(ship_faction_to_prefixes, list(
	FACTION_SYNDICATE = PREFIX_SYNDICATE,
	FACTION_SOLGOV = PREFIX_SOLGOV,
	FACTION_INTEQ = PREFIX_INTEQ,
	FACTION_NT = PREFIX_NT,
	FACTION_INDEPENDENT = PREFIX_INDEPENDENT,
	FACTION_ELYSIUM = PREFIX_ELYSIUM,
	FACTION_PIRATES = PREFIX_PIRATES,
	FACTION_EVENT = PREFIX_EVENT
	))
