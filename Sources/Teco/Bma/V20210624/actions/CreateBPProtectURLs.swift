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

extension Bma {
    /// CreateBPProtectURLs请求参数结构体
    public struct CreateBPProtectURLsRequest: TCRequestModel {
        /// 企业名称
        public let companyName: String?
        
        /// 电话号码
        public let phone: String?
        
        /// 营业执照
        public let licenseName: String?
        
        /// 保护网站
        public let protectURLs: [String]?
        
        /// 网站名称
        public let protectWebs: [String]?
        
        public init (companyName: String? = nil, phone: String? = nil, licenseName: String? = nil, protectURLs: [String]? = nil, protectWebs: [String]? = nil) {
            self.companyName = companyName
            self.phone = phone
            self.licenseName = licenseName
            self.protectURLs = protectURLs
            self.protectWebs = protectWebs
        }
        
        enum CodingKeys: String, CodingKey {
            case companyName = "CompanyName"
            case phone = "Phone"
            case licenseName = "LicenseName"
            case protectURLs = "ProtectURLs"
            case protectWebs = "ProtectWebs"
        }
    }
    
    /// CreateBPProtectURLs返回参数结构体
    public struct CreateBPProtectURLsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 添加保护网站
    @inlinable
    public func createBPProtectURLs(_ input: CreateBPProtectURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBPProtectURLsResponse > {
        self.client.execute(action: "CreateBPProtectURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加保护网站
    @inlinable
    public func createBPProtectURLs(_ input: CreateBPProtectURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPProtectURLsResponse {
        try await self.client.execute(action: "CreateBPProtectURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
