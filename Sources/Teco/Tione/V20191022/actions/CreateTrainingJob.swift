//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tione {
    /// 创建训练任务
    @inlinable
    public func createTrainingJob(_ input: CreateTrainingJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTrainingJobResponse > {
        self.client.execute(action: "CreateTrainingJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建训练任务
    @inlinable
    public func createTrainingJob(_ input: CreateTrainingJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrainingJobResponse {
        try await self.client.execute(action: "CreateTrainingJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateTrainingJob请求参数结构体
    public struct CreateTrainingJobRequest: TCRequestModel {
        /// 算法镜像配置
        public let algorithmSpecification: AlgorithmSpecification
        
        /// 输出数据配置
        public let outputDataConfig: OutputDataConfig
        
        /// 资源实例配置
        public let resourceConfig: ResourceConfig
        
        /// 训练任务名称
        public let trainingJobName: String
        
        /// 输入数据配置
        public let inputDataConfig: [InputDataConfig]?
        
        /// 中止条件
        public let stoppingCondition: StoppingCondition
        
        /// 私有网络配置
        public let vpcConfig: VpcConfig
        
        /// 算法超级参数
        public let hyperParameters: String?
        
        /// 环境变量配置
        public let envConfig: [EnvConfig]?
        
        /// 角色名称
        public let roleName: String?
        
        /// 在资源不足（ResourceInsufficient）时后台不定时尝试重新创建训练任务。可取值Enabled/Disabled
        /// 默认值为Disabled即不重新尝试。设为Enabled时重新尝试有一定的时间期限，定义在 StoppingCondition 中 MaxWaitTimeInSecond中 ，默认值为1天，超过该期限创建失败。
        public let retryWhenResourceInsufficient: String?
        
        public init (algorithmSpecification: AlgorithmSpecification, outputDataConfig: OutputDataConfig, resourceConfig: ResourceConfig, trainingJobName: String, inputDataConfig: [InputDataConfig]?, stoppingCondition: StoppingCondition, vpcConfig: VpcConfig, hyperParameters: String?, envConfig: [EnvConfig]?, roleName: String?, retryWhenResourceInsufficient: String?) {
            self.algorithmSpecification = algorithmSpecification
            self.outputDataConfig = outputDataConfig
            self.resourceConfig = resourceConfig
            self.trainingJobName = trainingJobName
            self.inputDataConfig = inputDataConfig
            self.stoppingCondition = stoppingCondition
            self.vpcConfig = vpcConfig
            self.hyperParameters = hyperParameters
            self.envConfig = envConfig
            self.roleName = roleName
            self.retryWhenResourceInsufficient = retryWhenResourceInsufficient
        }
        
        enum CodingKeys: String, CodingKey {
            case algorithmSpecification = "AlgorithmSpecification"
            case outputDataConfig = "OutputDataConfig"
            case resourceConfig = "ResourceConfig"
            case trainingJobName = "TrainingJobName"
            case inputDataConfig = "InputDataConfig"
            case stoppingCondition = "StoppingCondition"
            case vpcConfig = "VpcConfig"
            case hyperParameters = "HyperParameters"
            case envConfig = "EnvConfig"
            case roleName = "RoleName"
            case retryWhenResourceInsufficient = "RetryWhenResourceInsufficient"
        }
    }
    
    /// CreateTrainingJob返回参数结构体
    public struct CreateTrainingJobResponse: TCResponseModel {
        /// 训练任务名称
        public let trainingJobName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case trainingJobName = "TrainingJobName"
            case requestId = "RequestId"
        }
    }
}
