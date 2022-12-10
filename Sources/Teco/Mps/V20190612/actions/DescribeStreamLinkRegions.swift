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
    /// 查询媒体传输地区
    ///
    /// 查询媒体传输所有地区。
    @inlinable
    public func describeStreamLinkRegions(_ input: DescribeStreamLinkRegionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStreamLinkRegionsResponse > {
        self.client.execute(action: "DescribeStreamLinkRegions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询媒体传输地区
    ///
    /// 查询媒体传输所有地区。
    @inlinable
    public func describeStreamLinkRegions(_ input: DescribeStreamLinkRegionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkRegionsResponse {
        try await self.client.execute(action: "DescribeStreamLinkRegions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeStreamLinkRegions请求参数结构体
    public struct DescribeStreamLinkRegionsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeStreamLinkRegions返回参数结构体
    public struct DescribeStreamLinkRegionsResponse: TCResponseModel {
        /// 媒体传输地区信息。
        public let info: StreamLinkRegionInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case requestId = "RequestId"
        }
    }
}