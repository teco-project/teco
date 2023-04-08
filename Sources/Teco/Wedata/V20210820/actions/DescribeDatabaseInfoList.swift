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

import TecoCore

extension Wedata {
    /// DescribeDatabaseInfoList请求参数结构体
    public struct DescribeDatabaseInfoListRequest: TCRequestModel {
        /// 如果是hive这里写rpc，如果是其他类型不传
        public let connectionType: String

        public init(connectionType: String) {
            self.connectionType = connectionType
        }

        enum CodingKeys: String, CodingKey {
            case connectionType = "ConnectionType"
        }
    }

    /// DescribeDatabaseInfoList返回参数结构体
    public struct DescribeDatabaseInfoListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 获取数据库信息
    @inlinable @discardableResult
    public func describeDatabaseInfoList(_ input: DescribeDatabaseInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseInfoListResponse> {
        self.client.execute(action: "DescribeDatabaseInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据库信息
    @inlinable @discardableResult
    public func describeDatabaseInfoList(_ input: DescribeDatabaseInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseInfoListResponse {
        try await self.client.execute(action: "DescribeDatabaseInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据库信息
    @inlinable @discardableResult
    public func describeDatabaseInfoList(connectionType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseInfoListResponse> {
        self.describeDatabaseInfoList(.init(connectionType: connectionType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据库信息
    @inlinable @discardableResult
    public func describeDatabaseInfoList(connectionType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseInfoListResponse {
        try await self.describeDatabaseInfoList(.init(connectionType: connectionType), region: region, logger: logger, on: eventLoop)
    }
}
