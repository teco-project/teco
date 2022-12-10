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

extension Iotcloud {
    /// 查询私有化CA信息
    @inlinable
    public func describePrivateCA(_ input: DescribePrivateCARequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrivateCAResponse > {
        self.client.execute(action: "DescribePrivateCA", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询私有化CA信息
    @inlinable
    public func describePrivateCA(_ input: DescribePrivateCARequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateCAResponse {
        try await self.client.execute(action: "DescribePrivateCA", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePrivateCA请求参数结构体
    public struct DescribePrivateCARequest: TCRequestModel {
        /// 私有化CA名称
        public let certName: String
        
        public init (certName: String) {
            self.certName = certName
        }
        
        enum CodingKeys: String, CodingKey {
            case certName = "CertName"
        }
    }
    
    /// DescribePrivateCA返回参数结构体
    public struct DescribePrivateCAResponse: TCResponseModel {
        /// 私有化CA详情
        public let ca: CertInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ca = "CA"
            case requestId = "RequestId"
        }
    }
}
