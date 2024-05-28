using CommunityToolkit.Mvvm.Messaging.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Messages
{
    public class NormalScreenMessage : ValueChangedMessage<object>
    {
        public NormalScreenMessage(object r) : base(r)
        {
        }
    }
}
