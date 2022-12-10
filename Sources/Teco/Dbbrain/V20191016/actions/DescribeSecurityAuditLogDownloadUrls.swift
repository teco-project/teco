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

extension Dbbrain {
    /// 查询安全审计日志导出文件下载链接
    ///
    /// 查询安全审计日志导出文件下载链接。目前日志文件下载仅提供腾讯云内网地址，请通过广州地域的腾讯云服务器进行下载。
    @inlinable
    public func describeSecurityAuditLogDownloadUrls(_ input: DescribeSecurityAuditLogDownloadUrlsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityAuditLogDownloadUrlsResponse > {
        self.client.execute(action: "DescribeSecurityAuditLogDownloadUrls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询安全审计日志导出文件下载链接
    ///
    /// 查询安全审计日志导出文件下载链接。目前日志文件下载仅提供腾讯云内网地址，请通过广州地域的腾讯云服务器进行下载。
    @inlinable
    public func describeSecurityAuditLogDownloadUrls(_ input: DescribeSecurityAuditLogDownloadUrlsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityAuditLogDownloadUrlsResponse {
        try await self.client.execute(action: "DescribeSecurityAuditLogDownloadUrls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecurityAuditLogDownloadUrls请求参数结构体
    public struct DescribeSecurityAuditLogDownloadUrlsRequest: TCRequestModel {
        /// 安全审计组Id。
        public let secAuditGroupId: String
        
        /// 异步任务Id。
        public let asyncRequestId: UInt64
        
        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        public let product: String
        
        public init (secAuditGroupId: String, asyncRequestId: UInt64, product: String) {
            self.secAuditGroupId = secAuditGroupId
            self.asyncRequestId = asyncRequestId
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case secAuditGroupId = "SecAuditGroupId"
            case asyncRequestId = "AsyncRequestId"
            case product = "Product"
        }
    }
    
    /// DescribeSecurityAuditLogDownloadUrls返回参数结构体
    public struct DescribeSecurityAuditLogDownloadUrlsResponse: TCResponseModel {
        /// 导出结果的COS链接列表。当结果集很大时，可能会切分为多个url下载。
        public let urls: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
            case requestId = "RequestId"
        }
    }
}