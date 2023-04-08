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

extension Irp {
    /// DescribeGoodsRecommend请求参数结构体
    public struct DescribeGoodsRecommendRequest: TCRequestModel {
        /// 实例ID，在控制台获取
        public let instanceId: String

        /// 场景ID，在控制台创建场景后获取
        public let sceneId: String

        /// 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识，需和行为数据上报接口中的UserId一致，否则影响特征关联
        public let userId: String

        /// 用户设备ID数组，可传入用户的多个类型ID，用于关联画像信息
        public let userIdList: [StrUserIdInfo]?

        /// 推荐返回数量，默认10个，最多支持50个的内容返回。如果有更多数量要求，<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决
        public let goodsCnt: Int64?

        /// 当场景是相关推荐时该值必填，场景是非相关推荐时该值无效
        public let currentGoodsId: String?

        /// 用户的实时特征信息，用作特征
        public let userPortraitInfo: UserPortraitInfo?

        /// 本次请求针对该用户需要过滤的物品列表(不超过100个)
        public let blackGoodsList: [String]?

        /// json字符串，扩展字段
        public let `extension`: String?

        public init(instanceId: String, sceneId: String, userId: String, userIdList: [StrUserIdInfo]? = nil, goodsCnt: Int64? = nil, currentGoodsId: String? = nil, userPortraitInfo: UserPortraitInfo? = nil, blackGoodsList: [String]? = nil, extension: String? = nil) {
            self.instanceId = instanceId
            self.sceneId = sceneId
            self.userId = userId
            self.userIdList = userIdList
            self.goodsCnt = goodsCnt
            self.currentGoodsId = currentGoodsId
            self.userPortraitInfo = userPortraitInfo
            self.blackGoodsList = blackGoodsList
            self.extension = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sceneId = "SceneId"
            case userId = "UserId"
            case userIdList = "UserIdList"
            case goodsCnt = "GoodsCnt"
            case currentGoodsId = "CurrentGoodsId"
            case userPortraitInfo = "UserPortraitInfo"
            case blackGoodsList = "BlackGoodsList"
            case `extension` = "Extension"
        }
    }

    /// DescribeGoodsRecommend返回参数结构体
    public struct DescribeGoodsRecommendResponse: TCResponseModel {
        /// 推荐返回的商品信息列表
        public let dataList: [RecGoodsData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case requestId = "RequestId"
        }
    }

    /// 获取电商类推荐结果
    @inlinable
    public func describeGoodsRecommend(_ input: DescribeGoodsRecommendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGoodsRecommendResponse> {
        self.client.execute(action: "DescribeGoodsRecommend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取电商类推荐结果
    @inlinable
    public func describeGoodsRecommend(_ input: DescribeGoodsRecommendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGoodsRecommendResponse {
        try await self.client.execute(action: "DescribeGoodsRecommend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取电商类推荐结果
    @inlinable
    public func describeGoodsRecommend(instanceId: String, sceneId: String, userId: String, userIdList: [StrUserIdInfo]? = nil, goodsCnt: Int64? = nil, currentGoodsId: String? = nil, userPortraitInfo: UserPortraitInfo? = nil, blackGoodsList: [String]? = nil, extension: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGoodsRecommendResponse> {
        self.describeGoodsRecommend(.init(instanceId: instanceId, sceneId: sceneId, userId: userId, userIdList: userIdList, goodsCnt: goodsCnt, currentGoodsId: currentGoodsId, userPortraitInfo: userPortraitInfo, blackGoodsList: blackGoodsList, extension: `extension`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取电商类推荐结果
    @inlinable
    public func describeGoodsRecommend(instanceId: String, sceneId: String, userId: String, userIdList: [StrUserIdInfo]? = nil, goodsCnt: Int64? = nil, currentGoodsId: String? = nil, userPortraitInfo: UserPortraitInfo? = nil, blackGoodsList: [String]? = nil, extension: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGoodsRecommendResponse {
        try await self.describeGoodsRecommend(.init(instanceId: instanceId, sceneId: sceneId, userId: userId, userIdList: userIdList, goodsCnt: goodsCnt, currentGoodsId: currentGoodsId, userPortraitInfo: userPortraitInfo, blackGoodsList: blackGoodsList, extension: `extension`), region: region, logger: logger, on: eventLoop)
    }
}
