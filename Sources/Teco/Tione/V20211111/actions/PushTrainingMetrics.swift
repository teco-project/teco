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
    /// PushTrainingMetrics请求参数结构体
    public struct PushTrainingMetricsRequest: TCRequestModel {
        /// 指标数据
        public let data: [MetricData]?
        
        public init (data: [MetricData]? = nil) {
            self.data = data
        }
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }
    
    /// PushTrainingMetrics返回参数结构体
    public struct PushTrainingMetricsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 上报训练自定义指标
    @inlinable
    public func pushTrainingMetrics(_ input: PushTrainingMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PushTrainingMetricsResponse > {
        self.client.execute(action: "PushTrainingMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 上报训练自定义指标
    @inlinable
    public func pushTrainingMetrics(_ input: PushTrainingMetricsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PushTrainingMetricsResponse {
        try await self.client.execute(action: "PushTrainingMetrics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
