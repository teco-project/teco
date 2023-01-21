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
    /// DescribeAssetJarInfo请求参数结构体
    public struct DescribeAssetJarInfoRequest: TCRequestModel {
        /// 服务器Quuid
        public let quuid: String

        /// 服务器Uuid
        public let uuid: String

        /// Jar包ID
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

    /// DescribeAssetJarInfo返回参数结构体
    public struct DescribeAssetJarInfoResponse: TCResponseModel {
        /// Jar包详情
        public let jar: AssetJarDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jar = "Jar"
            case requestId = "RequestId"
        }
    }

    /// 获取Jar包详情
    @inlinable
    public func describeAssetJarInfo(_ input: DescribeAssetJarInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarInfoResponse> {
        self.client.execute(action: "DescribeAssetJarInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Jar包详情
    @inlinable
    public func describeAssetJarInfo(_ input: DescribeAssetJarInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarInfoResponse {
        try await self.client.execute(action: "DescribeAssetJarInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Jar包详情
    @inlinable
    public func describeAssetJarInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarInfoResponse> {
        self.describeAssetJarInfo(DescribeAssetJarInfoRequest(quuid: quuid, uuid: uuid, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Jar包详情
    @inlinable
    public func describeAssetJarInfo(quuid: String, uuid: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarInfoResponse {
        try await self.describeAssetJarInfo(DescribeAssetJarInfoRequest(quuid: quuid, uuid: uuid, id: id), region: region, logger: logger, on: eventLoop)
    }
}
