﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TEAC
{
    internal class CallStatement : Statement
    {
        public CallStatement(Token start, ReferenceExpression callExpression)
            : base(start)
        {
            this.Expression = callExpression;
        }

        public ReferenceExpression Expression { get; private set; }
    }
}
