// <summary>
// <copyright file="ITraineesService.cs" company="Axity">
// This source code is Copyright Axity and MAY NOT be copied, reproduced,
// published, distributed or transmitted to or stored in any manner without prior
// written consent from Axity (www.axity.com).
// </copyright>
// </summary>

namespace Axity.Users.Services.Trainees
{
    /// <summary>
    /// TraineesService class.
    /// </summary>
    public interface ITraineesService
    {
        /// <summary>
        /// Method for get all Trainees.
        /// </summary>
        /// <returns>A <see cref="IEnumerable{string}"/> representing the result of the asynchronous operation.</returns>
        IEnumerable<string> GetAll();
    }
}
