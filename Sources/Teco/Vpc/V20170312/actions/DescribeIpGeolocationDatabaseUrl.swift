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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Vpc {
    /// DescribeIpGeolocationDatabaseUrl请求参数结构体
    public struct DescribeIpGeolocationDatabaseUrlRequest: TCRequest {
        /// IP地理位置库协议类型，目前仅支持"ipv4"。
        public let type: String

        public init(type: String) {
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
        }
    }

    /// DescribeIpGeolocationDatabaseUrl返回参数结构体
    public struct DescribeIpGeolocationDatabaseUrlResponse: TCResponse {
        /// IP地理位置库下载链接地址。
        public let downLoadUrl: String

        /// 链接到期时间。按照`ISO8601`标准表示，并且使用`UTC`时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expiredAt: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downLoadUrl = "DownLoadUrl"
            case expiredAt = "ExpiredAt"
            case requestId = "RequestId"
        }
    }

    /// 获取IP地理位置库下载链接
    ///
    /// 本接口（DescribeIpGeolocationDatabaseUrl）用于获取IP地理位置库下载链接。
    /// _本接口即将下线，仅供存量用户使用，暂停新增用户。_
    @inlinable
    public func describeIpGeolocationDatabaseUrl(_ input: DescribeIpGeolocationDatabaseUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpGeolocationDatabaseUrlResponse> {
        self.client.execute(action: "DescribeIpGeolocationDatabaseUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取IP地理位置库下载链接
    ///
    /// 本接口（DescribeIpGeolocationDatabaseUrl）用于获取IP地理位置库下载链接。
    /// _本接口即将下线，仅供存量用户使用，暂停新增用户。_
    @inlinable
    public func describeIpGeolocationDatabaseUrl(_ input: DescribeIpGeolocationDatabaseUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpGeolocationDatabaseUrlResponse {
        try await self.client.execute(action: "DescribeIpGeolocationDatabaseUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取IP地理位置库下载链接
    ///
    /// 本接口（DescribeIpGeolocationDatabaseUrl）用于获取IP地理位置库下载链接。
    /// _本接口即将下线，仅供存量用户使用，暂停新增用户。_
    @inlinable
    public func describeIpGeolocationDatabaseUrl(type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpGeolocationDatabaseUrlResponse> {
        self.describeIpGeolocationDatabaseUrl(.init(type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取IP地理位置库下载链接
    ///
    /// 本接口（DescribeIpGeolocationDatabaseUrl）用于获取IP地理位置库下载链接。
    /// _本接口即将下线，仅供存量用户使用，暂停新增用户。_
    @inlinable
    public func describeIpGeolocationDatabaseUrl(type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpGeolocationDatabaseUrlResponse {
        try await self.describeIpGeolocationDatabaseUrl(.init(type: type), region: region, logger: logger, on: eventLoop)
    }
}
