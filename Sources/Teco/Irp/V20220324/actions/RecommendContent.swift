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

extension Irp {
    /// RecommendContent请求参数结构体
    public struct RecommendContentRequest: TCRequestModel {
        /// 业务id
        public let bid: String

        /// 场景id：比如有“猜你喜欢”，“热门内容”等推荐模块，每一个模块都有一个scene_id来表示。 在控制台创建场景后获取。需要跟行为上报时的id一致
        public let sceneId: String

        /// 用户唯一ID数组，每个数组元素详见userId结构体，若不填，则接口返回热门结果
        public let userIdList: [UserIdInfo]?

        /// 会话id：必须和行为数据上报时所填写的traceId相同，用于行为数据来自于那次在线推荐请求的归因。**注意：此处如果没传，则响应会返回一个全局唯一ID返回给客户，并需客户透传给行为日志上报接口**
        public let recTraceId: String?

        /// 推荐数量：物料优选的结果， 默认50个，目前最多支持200个的内容返回，如果返回个数更多，会影响性能，容易超时。
        public let itemCnt: Int64?

        /// 物料池id，用于召回该pool_id下的商品，如果有多个，用英文;分割。**注意：此处poolId需和物料上报时的poolIdList对应上**
        public let poolId: String?

        /// 来源物料id，即用户当前浏览的物料id，用于在内容详情页获取关联推荐内容
        public let currentItemId: String?

        /// 请求响应超时时间，单位ms，默认300ms，数值设置的过小，会影响推荐效果，最小支持250ms
        public let responseTimeout: Int64?

        /// 返回结果中不同物料类型的比例，比例顺序需严格按照（图文，长视频，短视频，小视频）进行。只允许传[0,100]数字，多个请用**英文冒号**分割，且加起来不能超过100，以及比例数量不能超过**场景绑定的物料类型**（图文，长视频，短视频，小视频）数。**示例：**图文和短视频比例为40%:60%时，则填40:60图文和短视频比例为0%:100%时，则填0:100图文，长视频和短视频的比例为，图文占20%，剩余80%由长视频和短视频随机返回，则填20:80或仅填20均可
        public let itemTypeRatio: String?

        public init(bid: String, sceneId: String, userIdList: [UserIdInfo]? = nil, recTraceId: String? = nil, itemCnt: Int64? = nil, poolId: String? = nil, currentItemId: String? = nil, responseTimeout: Int64? = nil, itemTypeRatio: String? = nil) {
            self.bid = bid
            self.sceneId = sceneId
            self.userIdList = userIdList
            self.recTraceId = recTraceId
            self.itemCnt = itemCnt
            self.poolId = poolId
            self.currentItemId = currentItemId
            self.responseTimeout = responseTimeout
            self.itemTypeRatio = itemTypeRatio
        }

        enum CodingKeys: String, CodingKey {
            case bid = "Bid"
            case sceneId = "SceneId"
            case userIdList = "UserIdList"
            case recTraceId = "RecTraceId"
            case itemCnt = "ItemCnt"
            case poolId = "PoolId"
            case currentItemId = "CurrentItemId"
            case responseTimeout = "ResponseTimeout"
            case itemTypeRatio = "ItemTypeRatio"
        }
    }

    /// RecommendContent返回参数结构体
    public struct RecommendContentResponse: TCResponseModel {
        /// 推荐追踪id，用于行为上报。每次接口调用返回的traceId不同
        public let recTraceId: String

        /// 标识具体的物料信息
        public let dataList: [RecItemData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recTraceId = "RecTraceId"
            case dataList = "DataList"
            case requestId = "RequestId"
        }
    }

    /// 获取推荐结果
    @inlinable
    public func recommendContent(_ input: RecommendContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecommendContentResponse> {
        self.client.execute(action: "RecommendContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取推荐结果
    @inlinable
    public func recommendContent(_ input: RecommendContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecommendContentResponse {
        try await self.client.execute(action: "RecommendContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取推荐结果
    @inlinable
    public func recommendContent(bid: String, sceneId: String, userIdList: [UserIdInfo]? = nil, recTraceId: String? = nil, itemCnt: Int64? = nil, poolId: String? = nil, currentItemId: String? = nil, responseTimeout: Int64? = nil, itemTypeRatio: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecommendContentResponse> {
        self.recommendContent(RecommendContentRequest(bid: bid, sceneId: sceneId, userIdList: userIdList, recTraceId: recTraceId, itemCnt: itemCnt, poolId: poolId, currentItemId: currentItemId, responseTimeout: responseTimeout, itemTypeRatio: itemTypeRatio), region: region, logger: logger, on: eventLoop)
    }

    /// 获取推荐结果
    @inlinable
    public func recommendContent(bid: String, sceneId: String, userIdList: [UserIdInfo]? = nil, recTraceId: String? = nil, itemCnt: Int64? = nil, poolId: String? = nil, currentItemId: String? = nil, responseTimeout: Int64? = nil, itemTypeRatio: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecommendContentResponse {
        try await self.recommendContent(RecommendContentRequest(bid: bid, sceneId: sceneId, userIdList: userIdList, recTraceId: recTraceId, itemCnt: itemCnt, poolId: poolId, currentItemId: currentItemId, responseTimeout: responseTimeout, itemTypeRatio: itemTypeRatio), region: region, logger: logger, on: eventLoop)
    }
}
