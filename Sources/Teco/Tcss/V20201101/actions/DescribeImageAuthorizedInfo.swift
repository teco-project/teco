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
    /// 查询镜像授权信息
    ///
    /// DescribeImageAuthorizedInfo  查询镜像授权信息
    @inlinable
    public func describeImageAuthorizedInfo(_ input: DescribeImageAuthorizedInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageAuthorizedInfoResponse > {
        self.client.execute(action: "DescribeImageAuthorizedInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询镜像授权信息
    ///
    /// DescribeImageAuthorizedInfo  查询镜像授权信息
    @inlinable
    public func describeImageAuthorizedInfo(_ input: DescribeImageAuthorizedInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAuthorizedInfoResponse {
        try await self.client.execute(action: "DescribeImageAuthorizedInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImageAuthorizedInfo请求参数结构体
    public struct DescribeImageAuthorizedInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeImageAuthorizedInfo返回参数结构体
    public struct DescribeImageAuthorizedInfoResponse: TCResponseModel {
        /// 总共有效的镜像授权数
        public let totalAuthorizedCnt: UInt64
        
        /// 已使用镜像授权数
        public let usedAuthorizedCnt: UInt64
        
        /// 已开启扫描镜像数
        public let scannedImageCnt: UInt64
        
        /// 未开启扫描镜像数
        public let notScannedImageCnt: UInt64
        
        /// 本地未开启扫描镜像数
        public let notScannedLocalImageCnt: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalAuthorizedCnt = "TotalAuthorizedCnt"
            case usedAuthorizedCnt = "UsedAuthorizedCnt"
            case scannedImageCnt = "ScannedImageCnt"
            case notScannedImageCnt = "NotScannedImageCnt"
            case notScannedLocalImageCnt = "NotScannedLocalImageCnt"
            case requestId = "RequestId"
        }
    }
}