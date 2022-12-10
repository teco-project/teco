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

extension Advisor {
    /// 查询评估项风险实例列表
    @inlinable
    public func describeTaskStrategyRisks(_ input: DescribeTaskStrategyRisksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskStrategyRisksResponse > {
        self.client.execute(action: "DescribeTaskStrategyRisks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询评估项风险实例列表
    @inlinable
    public func describeTaskStrategyRisks(_ input: DescribeTaskStrategyRisksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStrategyRisksResponse {
        try await self.client.execute(action: "DescribeTaskStrategyRisks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskStrategyRisks请求参数结构体
    public struct DescribeTaskStrategyRisksRequest: TCRequestModel {
        /// 评估项ID
        public let strategyId: UInt64
        
        /// 返回数量,默认值为100,最大值为200
        public let limit: UInt64?
        
        /// 偏移量,默认0
        public let offset: UInt64?
        
        /// 环境
        public let env: String?
        
        /// 任务类型
        public let taskType: String?
        
        public init (strategyId: UInt64, limit: UInt64?, offset: UInt64?, env: String?, taskType: String?) {
            self.strategyId = strategyId
            self.limit = limit
            self.offset = offset
            self.env = env
            self.taskType = taskType
        }
        
        enum CodingKeys: String, CodingKey {
            case strategyId = "StrategyId"
            case limit = "Limit"
            case offset = "Offset"
            case env = "Env"
            case taskType = "TaskType"
        }
    }
    
    /// DescribeTaskStrategyRisks返回参数结构体
    public struct DescribeTaskStrategyRisksResponse: TCResponseModel {
        /// 根据此配置，匹配风险实例列表（Risks）对应字段，例如:
        /// {"Response":{"RequestId":"111","RiskFieldsDesc":[{"Field":"InstanceId","FieldName":"ID","FieldType":"string","FieldDict":{}},{"Field":"InstanceName","FieldName":"名称","FieldType":"string","FieldDict":{}},{"Field":"InstanceState","FieldName":"状态","FieldType":"string","FieldDict":{"LAUNCH_FAILED":"创建失败","PENDING":"创建中","REBOOTING":"重启中","RUNNING":"运行中","SHUTDOWN":"停止待销毁","STARTING":"开机中","STOPPED":"关机","STOPPING":"关机中","TERMINATING":"销毁中"}},{"Field":"Zone","FieldName":"可用区","FieldType":"string","FieldDict":{}},{"Field":"PrivateIPAddresses","FieldName":"IP地址(内)","FieldType":"stringSlice","FieldDict":{}},{"Field":"PublicIPAddresses","FieldName":"IP地址(公)","FieldType":"stringSlice","FieldDict":{}},{"Field":"Region","FieldName":"地域","FieldType":"string","FieldDict":{}},{"Field":"Tags","FieldName":"标签","FieldType":"tags","FieldDict":{}}],"RiskTotalCount":3,"Risks":"[{\"InstanceId\":\"ins-xxx1\",\"InstanceName\":\"xxx1\",\"InstanceState\":\"RUNNING\",\"PrivateIPAddresses\":[\"1.17.64.2\"],\"PublicIPAddresses\":null,\"Region\":\"ap-shanghai\",\"Tags\":null,\"Zone\":\"ap-shanghai-2\"},{\"InstanceId\":\"ins-xxx2\",\"InstanceName\":\"xxx2\",\"InstanceState\":\"RUNNING\",\"PrivateIPAddresses\":[\"1.17.64.11\"],\"PublicIPAddresses\":null,\"Region\":\"ap-shanghai\",\"Tags\":null,\"Zone\":\"ap-shanghai-2\"}]","StrategyId":9}}
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskFieldsDesc: [RiskFieldsDesc]?
        
        /// 评估项ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strategyId: UInt64?
        
        /// 风险实例个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskTotalCount: UInt64?
        
        /// 风险实例详情列表，需要json decode
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let risks: String?
        
        /// 巡检资源数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case riskFieldsDesc = "RiskFieldsDesc"
            case strategyId = "StrategyId"
            case riskTotalCount = "RiskTotalCount"
            case risks = "Risks"
            case resourceCount = "ResourceCount"
            case requestId = "RequestId"
        }
    }
}
