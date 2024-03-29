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

extension Mariadb {
    /// DescribeFileDownloadUrl请求参数结构体
    public struct DescribeFileDownloadUrlRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 不带签名的文件路径
        public let filePath: String

        public init(instanceId: String, filePath: String) {
            self.instanceId = instanceId
            self.filePath = filePath
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filePath = "FilePath"
        }
    }

    /// DescribeFileDownloadUrl返回参数结构体
    public struct DescribeFileDownloadUrlResponse: TCResponse {
        /// 带签名的下载连接
        public let preSignedUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case preSignedUrl = "PreSignedUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取备份或日志的下载连接
    ///
    /// 本接口(DescribeFileDownloadUrl)用于获取数据库指定备份或日志文件的下载连接。
    @inlinable
    public func describeFileDownloadUrl(_ input: DescribeFileDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileDownloadUrlResponse> {
        self.client.execute(action: "DescribeFileDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取备份或日志的下载连接
    ///
    /// 本接口(DescribeFileDownloadUrl)用于获取数据库指定备份或日志文件的下载连接。
    @inlinable
    public func describeFileDownloadUrl(_ input: DescribeFileDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileDownloadUrlResponse {
        try await self.client.execute(action: "DescribeFileDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取备份或日志的下载连接
    ///
    /// 本接口(DescribeFileDownloadUrl)用于获取数据库指定备份或日志文件的下载连接。
    @inlinable
    public func describeFileDownloadUrl(instanceId: String, filePath: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFileDownloadUrlResponse> {
        self.describeFileDownloadUrl(.init(instanceId: instanceId, filePath: filePath), region: region, logger: logger, on: eventLoop)
    }

    /// 获取备份或日志的下载连接
    ///
    /// 本接口(DescribeFileDownloadUrl)用于获取数据库指定备份或日志文件的下载连接。
    @inlinable
    public func describeFileDownloadUrl(instanceId: String, filePath: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileDownloadUrlResponse {
        try await self.describeFileDownloadUrl(.init(instanceId: instanceId, filePath: filePath), region: region, logger: logger, on: eventLoop)
    }
}
