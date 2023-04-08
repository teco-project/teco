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

import Logging
import NIOCore
import TecoCore

extension Rum {
    /// DescribeReleaseFileSign请求参数结构体
    public struct DescribeReleaseFileSignRequest: TCRequestModel {
        /// 超时时间，不填默认是 5 分钟
        public let timeout: Int64?

        public init(timeout: Int64? = nil) {
            self.timeout = timeout
        }

        enum CodingKeys: String, CodingKey {
            case timeout = "Timeout"
        }
    }

    /// DescribeReleaseFileSign返回参数结构体
    public struct DescribeReleaseFileSignResponse: TCResponseModel {
        /// 临时密钥key
        public let secretKey: String

        /// 临时密钥 id
        public let secretID: String

        /// 临时密钥临时 token
        public let sessionToken: String

        /// 开始时间戳
        public let startTime: Int64

        /// 过期时间戳
        public let expiredTime: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretKey = "SecretKey"
            case secretID = "SecretID"
            case sessionToken = "SessionToken"
            case startTime = "StartTime"
            case expiredTime = "ExpiredTime"
            case requestId = "RequestId"
        }
    }

    /// 获取存储临时密钥
    ///
    /// 获取上传文件存储的临时密钥
    @inlinable
    public func describeReleaseFileSign(_ input: DescribeReleaseFileSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReleaseFileSignResponse> {
        self.client.execute(action: "DescribeReleaseFileSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取存储临时密钥
    ///
    /// 获取上传文件存储的临时密钥
    @inlinable
    public func describeReleaseFileSign(_ input: DescribeReleaseFileSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReleaseFileSignResponse {
        try await self.client.execute(action: "DescribeReleaseFileSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取存储临时密钥
    ///
    /// 获取上传文件存储的临时密钥
    @inlinable
    public func describeReleaseFileSign(timeout: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReleaseFileSignResponse> {
        self.describeReleaseFileSign(.init(timeout: timeout), region: region, logger: logger, on: eventLoop)
    }

    /// 获取存储临时密钥
    ///
    /// 获取上传文件存储的临时密钥
    @inlinable
    public func describeReleaseFileSign(timeout: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReleaseFileSignResponse {
        try await self.describeReleaseFileSign(.init(timeout: timeout), region: region, logger: logger, on: eventLoop)
    }
}
