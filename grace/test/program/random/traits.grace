trait emptiness {
    method isEmpty { size == 0; };
    method nonEmpty { size != 0; };
    method ifEmptyDo_nonEmptyDo (eAction, nAction) {
        if_then_else (isEmpty, { eAction.apply; }, { do(nAction); } ); 
    };
};