
// <summary>
// <copyright file="TraineesController.cs" company="Axity">
// This source code is Copyright Axity and MAY NOT be copied, reproduced,
// published, distributed or transmitted to or stored in any manner without prior
// written consent from Axity (www.axity.com).
// </copyright>
// </summary>

using Axity.Users.Services.Trainees;

namespace Axity.Users.Api.Controllers
{
    /// <summary>
    /// TraineeController Class.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class TraineesController : ControllerBase
    {
        private readonly ITraineesService traineesService;

        /// <summary>
        /// Initializes a new instance of the <see cref="TraineesController"/> class.
        /// </summary>
        /// <param name="traineesService">User Facade.</param>
        public TraineesController(ITraineesService traineesService) {
            ArgumentNullException.ThrowIfNull(traineesService, nameof(traineesService));
            this.traineesService = traineesService;
        }

        /// <summary>
        /// Method for get all users.
        /// </summary>
        /// <returns>A <see cref="Task{IEnumerable{string}}"/> representing the result of the asynchronous operation.</returns>
        [HttpGet]
        public IActionResult GetAllAsync()
            => this.Ok(this.traineesService.GetAll());
    }
}
