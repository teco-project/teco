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

extension Live {
    /// DescribeLiveStreamPushInfoList请求参数结构体
    public struct DescribeLiveStreamPushInfoListRequest: TCRequestModel {
        /// 推流域名。
        public let pushDomain: String?
        
        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        public let appName: String?
        
        /// 页数，
        /// 范围[1,10000]，
        /// 默认值：1。
        public let pageNum: UInt64?
        
        /// 每页个数，
        /// 范围：[1,1000]，
        /// 默认值： 200。
        public let pageSize: UInt64?
        
        public init (pushDomain: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil) {
            self.pushDomain = pushDomain
            self.appName = appName
            self.pageNum = pageNum
            self.pageSize = pageSize
        }
        
        enum CodingKeys: String, CodingKey {
            case pushDomain = "PushDomain"
            case appName = "AppName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }
    }
    
    /// DescribeLiveStreamPushInfoList返回参数结构体
    public struct DescribeLiveStreamPushInfoListResponse: TCResponseModel {
        /// 直播流的统计信息列表。
        public let dataInfoList: [PushDataInfo]
        
        /// 所有在线流的总数量。
        public let totalNum: UInt64
        
        /// 总页数。
        public let totalPage: UInt64
        
        /// 当前数据所在页码。
        public let pageNum: UInt64
        
        /// 每页的在线流的个数。
        public let pageSize: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case requestId = "RequestId"
        }
    }
    
    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(_ input: DescribeLiveStreamPushInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveStreamPushInfoListResponse > {
        self.client.execute(action: "DescribeLiveStreamPushInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(_ input: DescribeLiveStreamPushInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamPushInfoListResponse {
        try await self.client.execute(action: "DescribeLiveStreamPushInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
