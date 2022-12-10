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

extension Organization {
    /// 删除企业组织
    ///
    /// 删除企业组织
    @inlinable
    public func deleteOrganization(_ input: DeleteOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteOrganizationResponse > {
        self.client.execute(action: "DeleteOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除企业组织
    ///
    /// 删除企业组织
    @inlinable
    public func deleteOrganization(_ input: DeleteOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationResponse {
        try await self.client.execute(action: "DeleteOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteOrganization请求参数结构体
    public struct DeleteOrganizationRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DeleteOrganization返回参数结构体
    public struct DeleteOrganizationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}