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

extension Tcss {
    /// 查询木马自动隔离样本下载链接
    ///
    /// 查询木马自动隔离样本下载链接
    @inlinable
    public func describeVirusAutoIsolateSampleDownloadURL(_ input: DescribeVirusAutoIsolateSampleDownloadURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVirusAutoIsolateSampleDownloadURLResponse > {
        self.client.execute(action: "DescribeVirusAutoIsolateSampleDownloadURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询木马自动隔离样本下载链接
    ///
    /// 查询木马自动隔离样本下载链接
    @inlinable
    public func describeVirusAutoIsolateSampleDownloadURL(_ input: DescribeVirusAutoIsolateSampleDownloadURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusAutoIsolateSampleDownloadURLResponse {
        try await self.client.execute(action: "DescribeVirusAutoIsolateSampleDownloadURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVirusAutoIsolateSampleDownloadURL请求参数结构体
    public struct DescribeVirusAutoIsolateSampleDownloadURLRequest: TCRequestModel {
        /// 样本Md5值
        public let md5: String
        
        public init (md5: String) {
            self.md5 = md5
        }
        
        enum CodingKeys: String, CodingKey {
            case md5 = "MD5"
        }
    }
    
    /// DescribeVirusAutoIsolateSampleDownloadURL返回参数结构体
    public struct DescribeVirusAutoIsolateSampleDownloadURLResponse: TCResponseModel {
        /// 样本下载链接
        public let fileUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileUrl = "FileUrl"
            case requestId = "RequestId"
        }
    }
}