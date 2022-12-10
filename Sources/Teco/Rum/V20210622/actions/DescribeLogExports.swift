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

extension Rum {
    /// 获取日志下载任务列表
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    /// 本接口用于获取日志下载任务列表
    /// 默认接口请求频率限制：20次/秒
    @inlinable
    public func describeLogExports(_ input: DescribeLogExportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLogExportsResponse > {
        self.client.execute(action: "DescribeLogExports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取日志下载任务列表
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    /// 本接口用于获取日志下载任务列表
    /// 默认接口请求频率限制：20次/秒
    @inlinable
    public func describeLogExports(_ input: DescribeLogExportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogExportsResponse {
        try await self.client.execute(action: "DescribeLogExports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLogExports请求参数结构体
    public struct DescribeLogExportsRequest: TCRequestModel {
        /// 项目ID
        public let id: Int64
        
        public init (id: Int64) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "ID"
        }
    }
    
    /// DescribeLogExports返回参数结构体
    public struct DescribeLogExportsResponse: TCResponseModel {
        /// 日志导出记录列表
        public let logExportSet: [LogExport]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logExportSet = "LogExportSet"
            case requestId = "RequestId"
        }
    }
}