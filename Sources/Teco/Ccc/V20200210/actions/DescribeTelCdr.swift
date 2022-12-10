//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ccc {
    /// 获取电话服务记录与录音
    ///
    /// 获取电话服务记录与录音
    @inlinable
    public func describeTelCdr(_ input: DescribeTelCdrRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTelCdrResponse > {
        self.client.execute(action: "DescribeTelCdr", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取电话服务记录与录音
    ///
    /// 获取电话服务记录与录音
    @inlinable
    public func describeTelCdr(_ input: DescribeTelCdrRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTelCdrResponse {
        try await self.client.execute(action: "DescribeTelCdr", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTelCdr请求参数结构体
    public struct DescribeTelCdrRequest: TCRequestModel {
        /// 起始时间戳，Unix 秒级时间戳
        public let startTimeStamp: Int64
        
        /// 结束时间戳，Unix 秒级时间戳
        public let endTimeStamp: Int64
        
        /// 实例 ID（废弃）
        public let instanceId: Int64?
        
        /// 返回数据条数，上限（废弃）
        public let limit: Int64?
        
        /// 偏移（废弃）
        public let offset: Int64?
        
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64?
        
        /// 分页尺寸（必填），上限 100
        public let pageSize: Int64?
        
        /// 分页页码（必填），从 0 开始
        public let pageNumber: Int64?
        
        /// 按手机号筛选
        public let phones: [String]?
        
        /// 按SessionId筛选
        public let sessionIds: [String]?
        
        public init (startTimeStamp: Int64, endTimeStamp: Int64, instanceId: Int64?, limit: Int64?, offset: Int64?, sdkAppId: Int64?, pageSize: Int64?, pageNumber: Int64?, phones: [String]?, sessionIds: [String]?) {
            self.startTimeStamp = startTimeStamp
            self.endTimeStamp = endTimeStamp
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.sdkAppId = sdkAppId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.phones = phones
            self.sessionIds = sessionIds
        }
        
        enum CodingKeys: String, CodingKey {
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case sdkAppId = "SdkAppId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case phones = "Phones"
            case sessionIds = "SessionIds"
        }
    }
    
    /// DescribeTelCdr返回参数结构体
    public struct DescribeTelCdrResponse: TCResponseModel {
        /// 话单记录总数
        public let totalCount: Int64
        
        /// 话单记录
        public let telCdrs: [TelCdrInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case telCdrs = "TelCdrs"
            case requestId = "RequestId"
        }
    }
}