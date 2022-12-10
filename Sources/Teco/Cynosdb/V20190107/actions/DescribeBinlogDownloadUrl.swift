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

extension Cynosdb {
    /// 查询Binlog下载地址
    ///
    /// 此接口（DescribeBinlogDownloadUrl）用于查询Binlog的下载地址。
    @inlinable
    public func describeBinlogDownloadUrl(_ input: DescribeBinlogDownloadUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBinlogDownloadUrlResponse > {
        self.client.execute(action: "DescribeBinlogDownloadUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Binlog下载地址
    ///
    /// 此接口（DescribeBinlogDownloadUrl）用于查询Binlog的下载地址。
    @inlinable
    public func describeBinlogDownloadUrl(_ input: DescribeBinlogDownloadUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogDownloadUrlResponse {
        try await self.client.execute(action: "DescribeBinlogDownloadUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBinlogDownloadUrl请求参数结构体
    public struct DescribeBinlogDownloadUrlRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// Binlog文件ID
        public let binlogId: Int64
        
        public init (clusterId: String, binlogId: Int64) {
            self.clusterId = clusterId
            self.binlogId = binlogId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case binlogId = "BinlogId"
        }
    }
    
    /// DescribeBinlogDownloadUrl返回参数结构体
    public struct DescribeBinlogDownloadUrlResponse: TCResponseModel {
        /// 下载地址
        public let downloadUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }
}
