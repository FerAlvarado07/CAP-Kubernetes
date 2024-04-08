// <summary>
// <copyright file="TraineeServiceTest.cs" company="Axity">
// This source code is Copyright Axity and MAY NOT be copied, reproduced,
// published, distributed or transmitted to or stored in any manner without prior
// written consent from Axity (www.axity.com).
// </copyright>
// </summary>





namespace Axity.Users.Test.Services
{
    

    

    /// <summary>
    /// Class ProjectServiceTest.
    /// </summary>
    [TestFixture]

    
    public class TraineeServiceTest
    {
        private ITraineesService traineesService;

        /// <summary>
        /// Init configuration.
        /// </summary>
        [OneTimeSetUp]
        public void Init()
        {
            this.traineesService = new TraineesService();

        }

        /// <summary>
        /// Method Validate to the Trainees List.
        /// </summary>
        /// <returns>A <see cref="Task"/> representing the asynchronous unit test.</returns>
        [Test]
        public void ValidateTraineesList()
        {

            var response =  this.traineesService.GetAll();
            Assert.AreEqual(5, response.Count());

        }

    }
}
