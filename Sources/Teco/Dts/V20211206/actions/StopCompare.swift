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

extension Dts {
    /// 终止一致性校验任务
    @inlinable
    public func stopCompare(_ input: StopCompareRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopCompareResponse > {
        self.client.execute(action: "StopCompare", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 终止一致性校验任务
    @inlinable
    public func stopCompare(_ input: StopCompareRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopCompareResponse {
        try await self.client.execute(action: "StopCompare", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopCompare请求参数结构体
    public struct StopCompareRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String
        
        /// 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        public let compareTaskId: String
        
        public init (jobId: String, compareTaskId: String) {
            self.jobId = jobId
            self.compareTaskId = compareTaskId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case compareTaskId = "CompareTaskId"
        }
    }
    
    /// StopCompare返回参数结构体
    public struct StopCompareResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
