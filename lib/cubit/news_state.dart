abstract class NewsState {}
class NewsInitialState extends NewsState{}
class LoadingHealthDataState extends NewsState{}
class SuccessGetHealthDataState extends NewsState{}
class ErrorHealthState extends NewsState{}

class LoadingSportDataState extends NewsState{}
class SuccessGetSportDataState extends NewsState{}
class ErrorSportState extends NewsState{}


class LoadingScienceDataState extends NewsState{}
class SuccessGetScienceDataState extends NewsState{}
class ErrorScienceState extends NewsState{}


class ChangeNavBarState extends NewsState{}