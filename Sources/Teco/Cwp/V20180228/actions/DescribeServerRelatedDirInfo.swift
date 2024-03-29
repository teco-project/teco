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

extension Cwp {
    /// DescribeServerRelatedDirInfo请求参数结构体
    public struct DescribeServerRelatedDirInfoRequest: TCRequest {
        /// 唯一ID
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeServerRelatedDirInfo返回参数结构体
    public struct DescribeServerRelatedDirInfoResponse: TCResponse {
        /// 服务器名称
        public let hostName: String

        /// 服务器IP
        public let hostIp: String

        /// 防护目录数量
        public let protectDirNum: UInt64

        /// 防护文件数量
        public let protectFileNum: UInt64

        /// 防篡改数量
        public let protectTamperNum: UInt64

        /// 防护软链数量
        public let protectLinkNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostName = "HostName"
            case hostIp = "HostIp"
            case protectDirNum = "ProtectDirNum"
            case protectFileNum = "ProtectFileNum"
            case protectTamperNum = "ProtectTamperNum"
            case protectLinkNum = "ProtectLinkNum"
            case requestId = "RequestId"
        }
    }

    /// 查询服务器关联目录详情
    ///
    /// 查询服务区关联目录详情
    @inlinable
    public func describeServerRelatedDirInfo(_ input: DescribeServerRelatedDirInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerRelatedDirInfoResponse> {
        self.client.execute(action: "DescribeServerRelatedDirInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务器关联目录详情
    ///
    /// 查询服务区关联目录详情
    @inlinable
    public func describeServerRelatedDirInfo(_ input: DescribeServerRelatedDirInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerRelatedDirInfoResponse {
        try await self.client.execute(action: "DescribeServerRelatedDirInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务器关联目录详情
    ///
    /// 查询服务区关联目录详情
    @inlinable
    public func describeServerRelatedDirInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerRelatedDirInfoResponse> {
        self.describeServerRelatedDirInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务器关联目录详情
    ///
    /// 查询服务区关联目录详情
    @inlinable
    public func describeServerRelatedDirInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerRelatedDirInfoResponse {
        try await self.describeServerRelatedDirInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
