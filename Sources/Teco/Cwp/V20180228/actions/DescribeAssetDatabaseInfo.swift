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

extension Cwp {
    /// DescribeAssetDatabaseInfo请求参数结构体
    public struct DescribeAssetDatabaseInfoRequest: TCRequestModel {
        /// 服务器Quuid
        public let quuid: String

        /// 服务器Uuid
        public let uuid: String

        /// 数据库ID
        public let id: String

        public init(quuid: String, uuid: String, id: String) {
            self.quuid = quuid
            self.uuid = uuid
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case id = "Id"
        }
    }

    /// DescribeAssetDatabaseInfo返回参数结构体
    public struct DescribeAssetDatabaseInfoResponse: TCResponseModel {
        /// 数据库详情
        public let database: AssetDatabaseDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case database = "Database"
            case requestId = "RequestId"
        }
    }

    /// 获取资产管理数据库详情
    @inlinable
    public func describeAssetDatabaseInfo(_ input: DescribeAssetDatabaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetDatabaseInfoResponse> {
        self.client.execute(action: "DescribeAssetDatabaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理数据库详情
    @inlinable
    public func describeAssetDatabaseInfo(_ input: DescribeAssetDatabaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetDatabaseInfoResponse {
        try await self.client.execute(action: "DescribeAssetDatabaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理数据库详情
    @inlinable
    public func describeAssetDatabaseInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetDatabaseInfoResponse> {
        let input = DescribeAssetDatabaseInfoRequest(quuid: quuid, uuid: uuid, id: id)
        return self.client.execute(action: "DescribeAssetDatabaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理数据库详情
    @inlinable
    public func describeAssetDatabaseInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetDatabaseInfoResponse {
        let input = DescribeAssetDatabaseInfoRequest(quuid: quuid, uuid: uuid, id: id)
        return try await self.client.execute(action: "DescribeAssetDatabaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
