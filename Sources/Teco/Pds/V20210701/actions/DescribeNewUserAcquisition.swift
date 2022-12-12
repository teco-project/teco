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

extension Pds {
    /// DescribeNewUserAcquisition请求参数结构体
    public struct DescribeNewUserAcquisitionRequest: TCRequestModel {
        /// 用户信息
        public let serviceParams: UserInfos
        
        public init (serviceParams: UserInfos) {
            self.serviceParams = serviceParams
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceParams = "ServiceParams"
        }
    }
    
    /// DescribeNewUserAcquisition返回参数结构体
    public struct DescribeNewUserAcquisitionResponse: TCResponseModel {
        /// 用户信誉分，1-5从低到高
        public let serviceRsp: Score
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case serviceRsp = "ServiceRsp"
            case requestId = "RequestId"
        }
    }
    
    /// 拉新判断服务
    ///
    /// 判断新用户信誉值
    @inlinable
    public func describeNewUserAcquisition(_ input: DescribeNewUserAcquisitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNewUserAcquisitionResponse > {
        self.client.execute(action: "DescribeNewUserAcquisition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉新判断服务
    ///
    /// 判断新用户信誉值
    @inlinable
    public func describeNewUserAcquisition(_ input: DescribeNewUserAcquisitionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewUserAcquisitionResponse {
        try await self.client.execute(action: "DescribeNewUserAcquisition", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
