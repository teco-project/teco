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
    /// 获取应用列表其它字段
    ///
    /// 获取应用列表其它字段，如实例数量信息等
    @inlinable
    public func describeApplicationAttribute(_ input: DescribeApplicationAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationAttributeResponse > {
        self.client.execute(action: "DescribeApplicationAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取应用列表其它字段
    ///
    /// 获取应用列表其它字段，如实例数量信息等
    @inlinable
    public func describeApplicationAttribute(_ input: DescribeApplicationAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationAttributeResponse {
        try await self.client.execute(action: "DescribeApplicationAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApplicationAttribute请求参数结构体
    public struct DescribeApplicationAttributeRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String
        
        public init (applicationId: String) {
            self.applicationId = applicationId
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }
    
    /// DescribeApplicationAttribute返回参数结构体
    public struct DescribeApplicationAttributeResponse: TCResponseModel {
        /// 应用列表其它字段返回参数
        public let result: ApplicationAttribute
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
