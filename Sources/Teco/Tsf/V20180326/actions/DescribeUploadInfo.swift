//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// DescribeUploadInfo请求参数结构体
    public struct DescribeUploadInfoRequest: TCRequest {
        /// 应用ID
        public let applicationId: String

        /// 程序包名
        public let pkgName: String

        /// 程序包版本
        public let pkgVersion: String

        /// 程序包类型
        public let pkgType: String

        /// 程序包介绍
        public let pkgDesc: String?

        /// 程序包仓库类型
        public let repositoryType: String?

        /// 程序包仓库id
        public let repositoryId: String?

        public init(applicationId: String, pkgName: String, pkgVersion: String, pkgType: String, pkgDesc: String? = nil, repositoryType: String? = nil, repositoryId: String? = nil) {
            self.applicationId = applicationId
            self.pkgName = pkgName
            self.pkgVersion = pkgVersion
            self.pkgType = pkgType
            self.pkgDesc = pkgDesc
            self.repositoryType = repositoryType
            self.repositoryId = repositoryId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case pkgName = "PkgName"
            case pkgVersion = "PkgVersion"
            case pkgType = "PkgType"
            case pkgDesc = "PkgDesc"
            case repositoryType = "RepositoryType"
            case repositoryId = "RepositoryId"
        }
    }

    /// DescribeUploadInfo返回参数结构体
    public struct DescribeUploadInfoResponse: TCResponse {
        /// COS上传信息
        public let result: CosUploadInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取上传程序包信息
    ///
    /// TSF会将软件包上传到腾讯云对象存储（COS）。调用此接口获取上传信息，如目标地域，桶，包Id，存储路径，鉴权信息等，之后请使用COS API（或SDK）进行上传。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeUploadInfo(_ input: DescribeUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadInfoResponse> {
        self.client.execute(action: "DescribeUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取上传程序包信息
    ///
    /// TSF会将软件包上传到腾讯云对象存储（COS）。调用此接口获取上传信息，如目标地域，桶，包Id，存储路径，鉴权信息等，之后请使用COS API（或SDK）进行上传。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeUploadInfo(_ input: DescribeUploadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadInfoResponse {
        try await self.client.execute(action: "DescribeUploadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取上传程序包信息
    ///
    /// TSF会将软件包上传到腾讯云对象存储（COS）。调用此接口获取上传信息，如目标地域，桶，包Id，存储路径，鉴权信息等，之后请使用COS API（或SDK）进行上传。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeUploadInfo(applicationId: String, pkgName: String, pkgVersion: String, pkgType: String, pkgDesc: String? = nil, repositoryType: String? = nil, repositoryId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadInfoResponse> {
        self.describeUploadInfo(.init(applicationId: applicationId, pkgName: pkgName, pkgVersion: pkgVersion, pkgType: pkgType, pkgDesc: pkgDesc, repositoryType: repositoryType, repositoryId: repositoryId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取上传程序包信息
    ///
    /// TSF会将软件包上传到腾讯云对象存储（COS）。调用此接口获取上传信息，如目标地域，桶，包Id，存储路径，鉴权信息等，之后请使用COS API（或SDK）进行上传。
    /// COS相关文档请查阅：https://cloud.tencent.com/document/product/436
    @inlinable
    public func describeUploadInfo(applicationId: String, pkgName: String, pkgVersion: String, pkgType: String, pkgDesc: String? = nil, repositoryType: String? = nil, repositoryId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadInfoResponse {
        try await self.describeUploadInfo(.init(applicationId: applicationId, pkgName: pkgName, pkgVersion: pkgVersion, pkgType: pkgType, pkgDesc: pkgDesc, repositoryType: repositoryType, repositoryId: repositoryId), region: region, logger: logger, on: eventLoop)
    }
}
