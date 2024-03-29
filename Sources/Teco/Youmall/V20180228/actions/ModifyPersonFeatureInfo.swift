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

extension Youmall {
    /// ModifyPersonFeatureInfo请求参数结构体
    public struct ModifyPersonFeatureInfoRequest: TCRequest {
        /// 集团ID
        public let companyId: String

        /// 需要修改的顾客id
        public let personId: Int64

        /// 图片BASE编码
        public let picture: String

        /// 图片名称（尽量不要重复）
        public let pictureName: String

        /// 人物类型，仅能操作黑白名单顾客（1 白名单，2 表示黑名单，101表示集团白名单，102表示集团黑名单）
        public let personType: Int64

        /// 店铺ID，如果不填表示操作集团身份库
        public let shopId: Int64?

        public init(companyId: String, personId: Int64, picture: String, pictureName: String, personType: Int64, shopId: Int64? = nil) {
            self.companyId = companyId
            self.personId = personId
            self.picture = picture
            self.pictureName = pictureName
            self.personType = personType
            self.shopId = shopId
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case personId = "PersonId"
            case picture = "Picture"
            case pictureName = "PictureName"
            case personType = "PersonType"
            case shopId = "ShopId"
        }
    }

    /// ModifyPersonFeatureInfo返回参数结构体
    public struct ModifyPersonFeatureInfoResponse: TCResponse {
        /// 集团ID
        public let companyId: String

        /// 店铺ID，如果不填表示操作集团身份库
        public let shopId: Int64

        /// 请求的顾客id
        public let personId: Int64

        /// 图片实际绑定person_id，可能与请求的person_id不同，以此id为准
        public let personIdBind: Int64

        /// 请求的顾客类型
        public let personType: Int64

        /// 与请求的person_id类型相同、与请求图片特征相似的一个或多个person_id，需要额外确认这些id是否是同一个人
        public let similarPersonIds: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case personId = "PersonId"
            case personIdBind = "PersonIdBind"
            case personType = "PersonType"
            case similarPersonIds = "SimilarPersonIds"
            case requestId = "RequestId"
        }
    }

    /// 修改顾客特征信息
    ///
    /// 支持修改黑白名单类型的顾客特征
    @inlinable
    public func modifyPersonFeatureInfo(_ input: ModifyPersonFeatureInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonFeatureInfoResponse> {
        self.client.execute(action: "ModifyPersonFeatureInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改顾客特征信息
    ///
    /// 支持修改黑白名单类型的顾客特征
    @inlinable
    public func modifyPersonFeatureInfo(_ input: ModifyPersonFeatureInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonFeatureInfoResponse {
        try await self.client.execute(action: "ModifyPersonFeatureInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改顾客特征信息
    ///
    /// 支持修改黑白名单类型的顾客特征
    @inlinable
    public func modifyPersonFeatureInfo(companyId: String, personId: Int64, picture: String, pictureName: String, personType: Int64, shopId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPersonFeatureInfoResponse> {
        self.modifyPersonFeatureInfo(.init(companyId: companyId, personId: personId, picture: picture, pictureName: pictureName, personType: personType, shopId: shopId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改顾客特征信息
    ///
    /// 支持修改黑白名单类型的顾客特征
    @inlinable
    public func modifyPersonFeatureInfo(companyId: String, personId: Int64, picture: String, pictureName: String, personType: Int64, shopId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPersonFeatureInfoResponse {
        try await self.modifyPersonFeatureInfo(.init(companyId: companyId, personId: personId, picture: picture, pictureName: pictureName, personType: personType, shopId: shopId), region: region, logger: logger, on: eventLoop)
    }
}
