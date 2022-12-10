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

extension Cynosdb {
    /// 恢复serverless集群
    @inlinable
    public func resumeServerless(_ input: ResumeServerlessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResumeServerlessResponse > {
        self.client.execute(action: "ResumeServerless", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 恢复serverless集群
    @inlinable
    public func resumeServerless(_ input: ResumeServerlessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeServerlessResponse {
        try await self.client.execute(action: "ResumeServerless", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ResumeServerless请求参数结构体
    public struct ResumeServerlessRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// ResumeServerless返回参数结构体
    public struct ResumeServerlessResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}
