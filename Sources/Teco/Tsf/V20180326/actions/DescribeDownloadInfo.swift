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

extension Tsf {
    /// DescribeDownloadInfo请求参数结构体
    public struct DescribeDownloadInfoRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String
        
        /// 程序包ID
        public let pkgId: String
        
        /// 程序包仓库ID
        public let repositoryId: String?
        
        /// 程序包仓库类型
        public let repositoryType: String?
        
        public init (applicationId: String, pkgId: String, repositoryId: String? = nil, repositoryType: String? = nil) {
            self.applicationId = applicationId
            self.pkgId = pkgId
            self.repositoryId = repositoryId
            self.repositoryType = repositoryType
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case pkgId = "PkgId"
            case repositoryId = "RepositoryId"
            case repositoryType = "RepositoryType"
        }
    }
    
    /// DescribeDownloadInfo返回参数结构体
    public struct DescribeDownloadInfoResponse: TCResponseModel {
        /// COS鉴权信息
        public let result: CosDownloadInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 获取下载程序包信息
    ///
    /// TSF上传的程序包存放在腾讯云对象存储（COS）中，通过该API可以获取从COS下载程序包需要的信息，包括包所在的桶、存储路径、鉴权信息等，之后使用COS API（或SDK）进行下载。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeDownloadInfo(_ input: DescribeDownloadInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDownloadInfoResponse > {
        self.client.execute(action: "DescribeDownloadInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取下载程序包信息
    ///
    /// TSF上传的程序包存放在腾讯云对象存储（COS）中，通过该API可以获取从COS下载程序包需要的信息，包括包所在的桶、存储路径、鉴权信息等，之后使用COS API（或SDK）进行下载。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeDownloadInfo(_ input: DescribeDownloadInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDownloadInfoResponse {
        try await self.client.execute(action: "DescribeDownloadInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
