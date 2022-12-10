//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Apm {
    /// 创建Apm实例
    ///
    /// 业务购买APM实例，调用该接口创建
    @inlinable
    public func createApmInstance(_ input: CreateApmInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApmInstanceResponse > {
        self.client.execute(action: "CreateApmInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建Apm实例
    ///
    /// 业务购买APM实例，调用该接口创建
    @inlinable
    public func createApmInstance(_ input: CreateApmInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApmInstanceResponse {
        try await self.client.execute(action: "CreateApmInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateApmInstance请求参数结构体
    public struct CreateApmInstanceRequest: TCRequestModel {
        /// 实例名
        public let name: String
        
        /// 实例描述信息
        public let description: String?
        
        /// Trace数据保存时长
        public let traceDuration: Int64?
        
        /// 标签列表
        public let tags: [ApmTag]?
        
        /// 实例上报额度值
        public let spanDailyCounters: UInt64?
        
        public init (name: String, description: String?, traceDuration: Int64?, tags: [ApmTag]?, spanDailyCounters: UInt64?) {
            self.name = name
            self.description = description
            self.traceDuration = traceDuration
            self.tags = tags
            self.spanDailyCounters = spanDailyCounters
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case traceDuration = "TraceDuration"
            case tags = "Tags"
            case spanDailyCounters = "SpanDailyCounters"
        }
    }
    
    /// CreateApmInstance返回参数结构体
    public struct CreateApmInstanceResponse: TCResponseModel {
        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }
}