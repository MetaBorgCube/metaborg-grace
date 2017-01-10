method if(cond) then(blk) {
    cond.ifTrue(blk);
};

method if(cond) then(blk1) else(blk2) {
  cond.ifTrue(blk1) ifFalse(blk2);
};

method if(cond1) then(blk1) elseif(cond2) then(blk2) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2);
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse(elseblk);
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3);
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse(elseblk);
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4);
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse(elseblk);
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4)
        elseif(cond5) then(blk5) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse {
                    cond5.apply.ifTrue(blk5);
                };
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4)
        elseif(cond5) then(blk5) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse {
                    cond5.apply.ifTrue(blk5) ifFalse(elseblk);
                };
            };
        };
    };
};
