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

extension Ccc {
    /// 申请运营商白名单号码
    ///
    /// 用于无限频率地呼叫坐席手机
    @inlinable
    public func createCarrierPrivilegeNumberApplicant(_ input: CreateCarrierPrivilegeNumberApplicantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCarrierPrivilegeNumberApplicantResponse > {
        self.client.execute(action: "CreateCarrierPrivilegeNumberApplicant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 申请运营商白名单号码
    ///
    /// 用于无限频率地呼叫坐席手机
    @inlinable
    public func createCarrierPrivilegeNumberApplicant(_ input: CreateCarrierPrivilegeNumberApplicantRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCarrierPrivilegeNumberApplicantResponse {
        try await self.client.execute(action: "CreateCarrierPrivilegeNumberApplicant", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCarrierPrivilegeNumberApplicant请求参数结构体
    public struct CreateCarrierPrivilegeNumberApplicantRequest: TCRequestModel {
        /// SdkAppId
        public let sdkAppId: UInt64
        
        /// 主叫号码，必须为实例中存在的号码，格式为0086xxxx（暂时只支持国内号码）
        public let callers: [String]
        
        /// 被叫号码，必须为实例中坐席绑定的手机号码，格式为0086xxxx（暂时只支持国内号码）
        public let callees: [String]
        
        /// 描述
        public let description: String?
        
        public init (sdkAppId: UInt64, callers: [String], callees: [String], description: String?) {
            self.sdkAppId = sdkAppId
            self.callers = callers
            self.callees = callees
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case callers = "Callers"
            case callees = "Callees"
            case description = "Description"
        }
    }
    
    /// CreateCarrierPrivilegeNumberApplicant返回参数结构体
    public struct CreateCarrierPrivilegeNumberApplicantResponse: TCResponseModel {
        /// 申请单Id
        public let applicantId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case applicantId = "ApplicantId"
            case requestId = "RequestId"
        }
    }
}
