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

extension Essbasic {
    /// DescribeCatalogApprovers请求参数结构体
    public struct DescribeCatalogApproversRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 目录ID
        public let catalogId: String

        /// 查询指定用户是否为参与者,为空表示查询所有参与者
        public let userId: String?

        public init(caller: Caller, catalogId: String, userId: String? = nil) {
            self.caller = caller
            self.catalogId = catalogId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case catalogId = "CatalogId"
            case userId = "UserId"
        }
    }

    /// DescribeCatalogApprovers返回参数结构体
    public struct DescribeCatalogApproversResponse: TCResponseModel {
        /// 参与者列表
        public let approvers: [CatalogApprovers]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case approvers = "Approvers"
            case requestId = "RequestId"
        }
    }

    /// 拉取流程目录参与者的信息
    ///
    /// 第三方应用可通过此接口（DescribeCatalogApprovers）查询指定目录的参与者列表
    @inlinable
    public func describeCatalogApprovers(_ input: DescribeCatalogApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCatalogApproversResponse> {
        self.client.execute(action: "DescribeCatalogApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取流程目录参与者的信息
    ///
    /// 第三方应用可通过此接口（DescribeCatalogApprovers）查询指定目录的参与者列表
    @inlinable
    public func describeCatalogApprovers(_ input: DescribeCatalogApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCatalogApproversResponse {
        try await self.client.execute(action: "DescribeCatalogApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取流程目录参与者的信息
    ///
    /// 第三方应用可通过此接口（DescribeCatalogApprovers）查询指定目录的参与者列表
    @inlinable
    public func describeCatalogApprovers(caller: Caller, catalogId: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCatalogApproversResponse> {
        let input = DescribeCatalogApproversRequest(caller: caller, catalogId: catalogId, userId: userId)
        return self.client.execute(action: "DescribeCatalogApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取流程目录参与者的信息
    ///
    /// 第三方应用可通过此接口（DescribeCatalogApprovers）查询指定目录的参与者列表
    @inlinable
    public func describeCatalogApprovers(caller: Caller, catalogId: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCatalogApproversResponse {
        let input = DescribeCatalogApproversRequest(caller: caller, catalogId: catalogId, userId: userId)
        return try await self.client.execute(action: "DescribeCatalogApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
