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

extension Pts {
    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable
    public func adjustJobSpeed(_ input: AdjustJobSpeedRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AdjustJobSpeedResponse > {
        self.client.execute(action: "AdjustJobSpeed", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable
    public func adjustJobSpeed(_ input: AdjustJobSpeedRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdjustJobSpeedResponse {
        try await self.client.execute(action: "AdjustJobSpeed", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AdjustJobSpeed请求参数结构体
    public struct AdjustJobSpeedRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String
        
        /// 目标RPS
        public let targetRequestsPerSecond: Int64
        
        public init (jobId: String, targetRequestsPerSecond: Int64) {
            self.jobId = jobId
            self.targetRequestsPerSecond = targetRequestsPerSecond
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case targetRequestsPerSecond = "TargetRequestsPerSecond"
        }
    }
    
    /// AdjustJobSpeed返回参数结构体
    public struct AdjustJobSpeedResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
