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

extension Dbbrain {
    /// AddUserContact请求参数结构体
    public struct AddUserContactRequest: TCRequest {
        /// 联系人姓名，大小写字母+数字+下划线，最小 2 位最大 60 位的长度， 不能以"_"开头，且联系人名保持唯一。
        public let name: String

        /// 邮箱地址，大小写字母、数字及下划线组成， 不能以"_"开头。
        public let contactInfo: String

        /// 服务产品类型，固定值："mysql"。
        public let product: String

        public init(name: String, contactInfo: String, product: String) {
            self.name = name
            self.contactInfo = contactInfo
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case contactInfo = "ContactInfo"
            case product = "Product"
        }
    }

    /// AddUserContact返回参数结构体
    public struct AddUserContactResponse: TCResponse {
        /// 添加成功的联系人id。
        public let id: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 添加联系人信息
    ///
    /// 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。Region统一选择广州。
    @inlinable
    public func addUserContact(_ input: AddUserContactRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserContactResponse> {
        self.client.execute(action: "AddUserContact", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加联系人信息
    ///
    /// 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。Region统一选择广州。
    @inlinable
    public func addUserContact(_ input: AddUserContactRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserContactResponse {
        try await self.client.execute(action: "AddUserContact", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加联系人信息
    ///
    /// 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。Region统一选择广州。
    @inlinable
    public func addUserContact(name: String, contactInfo: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserContactResponse> {
        self.addUserContact(.init(name: name, contactInfo: contactInfo, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 添加联系人信息
    ///
    /// 添加邮件接收联系人的姓名， 邮件地址，返回值为添加成功的联系人id。Region统一选择广州。
    @inlinable
    public func addUserContact(name: String, contactInfo: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserContactResponse {
        try await self.addUserContact(.init(name: name, contactInfo: contactInfo, product: product), region: region, logger: logger, on: eventLoop)
    }
}
