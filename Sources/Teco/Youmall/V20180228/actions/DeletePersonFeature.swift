//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Youmall {
    /// DeletePersonFeature请求参数结构体
    public struct DeletePersonFeatureRequest: TCRequestModel {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: Int64

        /// 顾客ID
        public let personId: Int64

        public init(companyId: String, shopId: Int64, personId: Int64) {
            self.companyId = companyId
            self.shopId = shopId
            self.personId = personId
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case personId = "PersonId"
        }
    }

    /// DeletePersonFeature返回参数结构体
    public struct DeletePersonFeatureResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除顾客特征
    ///
    /// 删除顾客特征，仅支持删除黑名单或者白名单用户特征。
    @inlinable @discardableResult
    public func deletePersonFeature(_ input: DeletePersonFeatureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonFeatureResponse> {
        self.client.execute(action: "DeletePersonFeature", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除顾客特征
    ///
    /// 删除顾客特征，仅支持删除黑名单或者白名单用户特征。
    @inlinable @discardableResult
    public func deletePersonFeature(_ input: DeletePersonFeatureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonFeatureResponse {
        try await self.client.execute(action: "DeletePersonFeature", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除顾客特征
    ///
    /// 删除顾客特征，仅支持删除黑名单或者白名单用户特征。
    @inlinable @discardableResult
    public func deletePersonFeature(companyId: String, shopId: Int64, personId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonFeatureResponse> {
        self.deletePersonFeature(DeletePersonFeatureRequest(companyId: companyId, shopId: shopId, personId: personId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除顾客特征
    ///
    /// 删除顾客特征，仅支持删除黑名单或者白名单用户特征。
    @inlinable @discardableResult
    public func deletePersonFeature(companyId: String, shopId: Int64, personId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonFeatureResponse {
        try await self.deletePersonFeature(DeletePersonFeatureRequest(companyId: companyId, shopId: shopId, personId: personId), region: region, logger: logger, on: eventLoop)
    }
}
