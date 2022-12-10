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

extension Tem {
    /// 生成应用程序包预签名下载链接
    ///
    /// 生成应用程序包预签名下载链接
    @inlinable
    public func generateApplicationPackageDownloadUrl(_ input: GenerateApplicationPackageDownloadUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GenerateApplicationPackageDownloadUrlResponse > {
        self.client.execute(action: "GenerateApplicationPackageDownloadUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成应用程序包预签名下载链接
    ///
    /// 生成应用程序包预签名下载链接
    @inlinable
    public func generateApplicationPackageDownloadUrl(_ input: GenerateApplicationPackageDownloadUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateApplicationPackageDownloadUrlResponse {
        try await self.client.execute(action: "GenerateApplicationPackageDownloadUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GenerateApplicationPackageDownloadUrl请求参数结构体
    public struct GenerateApplicationPackageDownloadUrlRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String
        
        /// 包名
        public let pkgName: String
        
        /// 需要下载的包版本
        public let deployVersion: String
        
        /// 来源 channel
        public let sourceChannel: Int64?
        
        public init (applicationId: String, pkgName: String, deployVersion: String, sourceChannel: Int64?) {
            self.applicationId = applicationId
            self.pkgName = pkgName
            self.deployVersion = deployVersion
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case pkgName = "PkgName"
            case deployVersion = "DeployVersion"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// GenerateApplicationPackageDownloadUrl返回参数结构体
    public struct GenerateApplicationPackageDownloadUrlResponse: TCResponseModel {
        /// 包下载临时链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}