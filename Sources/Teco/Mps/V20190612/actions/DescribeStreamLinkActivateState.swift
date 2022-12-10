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

extension Mps {
    /// 查询媒体传输开通状态
    ///
    /// 查询媒体传输开通状态。
    @inlinable
    public func describeStreamLinkActivateState(_ input: DescribeStreamLinkActivateStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStreamLinkActivateStateResponse > {
        self.client.execute(action: "DescribeStreamLinkActivateState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询媒体传输开通状态
    ///
    /// 查询媒体传输开通状态。
    @inlinable
    public func describeStreamLinkActivateState(_ input: DescribeStreamLinkActivateStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkActivateStateResponse {
        try await self.client.execute(action: "DescribeStreamLinkActivateState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeStreamLinkActivateState请求参数结构体
    public struct DescribeStreamLinkActivateStateRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeStreamLinkActivateState返回参数结构体
    public struct DescribeStreamLinkActivateStateResponse: TCResponseModel {
        /// 用户已激活为0，否则为非0。
        public let status: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}