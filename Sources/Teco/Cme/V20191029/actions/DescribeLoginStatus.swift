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

extension Cme {
    /// DescribeLoginStatus请求参数结构体
    public struct DescribeLoginStatusRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String
        
        /// 用户 Id 列表，N 从0开始取值，最大19。
        public let userIds: [String]
        
        public init (platform: String, userIds: [String]) {
            self.platform = platform
            self.userIds = userIds
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case userIds = "UserIds"
        }
    }
    
    /// DescribeLoginStatus返回参数结构体
    public struct DescribeLoginStatusResponse: TCResponseModel {
        /// 用户登录状态列表。
        public let loginStatusInfoSet: [LoginStatusInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case loginStatusInfoSet = "LoginStatusInfoSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询登录态
    ///
    /// 查询指定用户的登录态。
    @inlinable
    public func describeLoginStatus(_ input: DescribeLoginStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoginStatusResponse > {
        self.client.execute(action: "DescribeLoginStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询登录态
    ///
    /// 查询指定用户的登录态。
    @inlinable
    public func describeLoginStatus(_ input: DescribeLoginStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginStatusResponse {
        try await self.client.execute(action: "DescribeLoginStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
