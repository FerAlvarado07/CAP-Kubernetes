// <summary>
// <copyright file="TraineesService.cs" company="Axity">
// This source code is Copyright Axity and MAY NOT be copied, reproduced,
// published, distributed or transmitted to or stored in any manner without prior
// written consent from Axity (www.axity.com).
// </copyright>
// </summary>

namespace Axity.Users.Services.Trainees.Impl
{
    /// <summary>
    /// TraineesService class.
    /// </summary>
    public class TraineesService : ITraineesService
    {
        /// <inheritdoc/>
        public IEnumerable<string> GetAll()
        {
             return new List<string>
            {
                "Fernando",
                "Diego",
                "Luis",
                "Adrian",
                "Erik"
                };
        }
    }
}
