//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiw {
    /// DescribeTranscodeCallback请求参数结构体
    public struct DescribeTranscodeCallbackRequest: TCRequestModel {
        /// 应用的SdkAppId
        public let sdkAppId: Int64

        public init(sdkAppId: Int64) {
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeTranscodeCallback返回参数结构体
    public struct DescribeTranscodeCallbackResponse: TCResponseModel {
        /// 文档转码回调地址
        public let callback: String

        /// 文档转码回调鉴权密钥
        public let callbackKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callback = "Callback"
            case callbackKey = "CallbackKey"
            case requestId = "RequestId"
        }
    }

    /// 查询文档转码回调地址
    @inlinable
    public func describeTranscodeCallback(_ input: DescribeTranscodeCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeCallbackResponse> {
        self.client.execute(action: "DescribeTranscodeCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询文档转码回调地址
    @inlinable
    public func describeTranscodeCallback(_ input: DescribeTranscodeCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeCallbackResponse {
        try await self.client.execute(action: "DescribeTranscodeCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询文档转码回调地址
    @inlinable
    public func describeTranscodeCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeCallbackResponse> {
        self.describeTranscodeCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询文档转码回调地址
    @inlinable
    public func describeTranscodeCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeCallbackResponse {
        try await self.describeTranscodeCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
