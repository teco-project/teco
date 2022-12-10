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

extension Mps {
    /// 查询媒体输入流
    ///
    /// 查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlow(_ input: DescribeStreamLinkFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStreamLinkFlowResponse > {
        self.client.execute(action: "DescribeStreamLinkFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询媒体输入流
    ///
    /// 查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlow(_ input: DescribeStreamLinkFlowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeStreamLinkFlow请求参数结构体
    public struct DescribeStreamLinkFlowRequest: TCRequestModel {
        /// 流Id。
        public let flowId: String
        
        public init (flowId: String) {
            self.flowId = flowId
        }
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
        }
    }
    
    /// DescribeStreamLinkFlow返回参数结构体
    public struct DescribeStreamLinkFlowResponse: TCResponseModel {
        /// 流的配置信息。
        public let info: DescribeFlow
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case requestId = "RequestId"
        }
    }
}
