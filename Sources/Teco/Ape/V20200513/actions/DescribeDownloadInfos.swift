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

@_exported import struct Foundation.Date

extension Ape {
    /// DescribeDownloadInfos请求参数结构体
    public struct DescribeDownloadInfosRequest: TCRequestModel {
        /// 默认10
        public let limit: Int64?
        
        /// 默认0
        public let offset: Int64?
        
        /// 开始时间晚于指定时间
        public let beginTime: Date?
        
        /// 结束时间早于指定时间
        public let endTime: Date?
        
        /// 无效值，过滤结果为空
        public let imageIds: [Int64]?
        
        public init (limit: Int64? = nil, offset: Int64? = nil, beginTime: Date? = nil, endTime: Date? = nil, imageIds: [Int64]? = nil) {
            self.limit = limit
            self.offset = offset
            self.beginTime = beginTime
            self.endTime = endTime
            self.imageIds = imageIds
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case imageIds = "ImageIds"
        }
    }
    
    /// DescribeDownloadInfos返回参数结构体
    public struct DescribeDownloadInfosResponse: TCResponseModel {
        /// 核销下载记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadInfos: [DownloadInfo]?
        
        /// 总记录数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadInfos = "DownloadInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(_ input: DescribeDownloadInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDownloadInfosResponse > {
        self.client.execute(action: "DescribeDownloadInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取图片下载记录
    ///
    /// 获取用户图片下载记录
    @inlinable
    public func describeDownloadInfos(_ input: DescribeDownloadInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadInfosResponse {
        try await self.client.execute(action: "DescribeDownloadInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
