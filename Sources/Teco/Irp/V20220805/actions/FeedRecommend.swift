//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 获取信息流推荐结果
    @inlinable
    public func feedRecommend(_ input: FeedRecommendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < FeedRecommendResponse > {
        self.client.execute(action: "FeedRecommend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取信息流推荐结果
    @inlinable
    public func feedRecommend(_ input: FeedRecommendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FeedRecommendResponse {
        try await self.client.execute(action: "FeedRecommend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// FeedRecommend请求参数结构体
    public struct FeedRecommendRequest: TCRequestModel {
        /// 实例ID，在控制台获取
        public let instanceId: String
        
        /// 场景ID，在控制台创建场景后获取
        public let sceneId: String
        
        /// 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        public let userId: String
        
        /// 用户设备ID数组，可传入用户的多个类型ID，用于关联画像信息
        public let userIdList: [UserIdInfo]?
        
        /// 推荐返回数量，默认10个，最多支持50个的内容返回。如果有更多数量要求，<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决
        public let itemCnt: Int64?
        
        /// 当场景是相关推荐时该值必填，场景是非相关推荐时该值无效
        public let currentItemId: String?
        
        public init (instanceId: String, sceneId: String, userId: String, userIdList: [UserIdInfo]?, itemCnt: Int64?, currentItemId: String?) {
            self.instanceId = instanceId
            self.sceneId = sceneId
            self.userId = userId
            self.userIdList = userIdList
            self.itemCnt = itemCnt
            self.currentItemId = currentItemId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sceneId = "SceneId"
            case userId = "UserId"
            case userIdList = "UserIdList"
            case itemCnt = "ItemCnt"
            case currentItemId = "CurrentItemId"
        }
    }
    
    /// FeedRecommend返回参数结构体
    public struct FeedRecommendResponse: TCResponseModel {
        /// 推荐返回的内容信息列表
        public let dataList: [RecItemData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case requestId = "RequestId"
        }
    }
}
