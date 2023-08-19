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

extension Intlpartnersmgt {
    /// AllocateCustomerCredit请求参数结构体
    public struct AllocateCustomerCreditRequest: TCRequest {
        /// 分配客户信用的具体值
        public let addedCredit: Float

        /// 客户uin
        public let clientUin: UInt64

        public init(addedCredit: Float, clientUin: UInt64) {
            self.addedCredit = addedCredit
            self.clientUin = clientUin
        }

        enum CodingKeys: String, CodingKey {
            case addedCredit = "AddedCredit"
            case clientUin = "ClientUin"
        }
    }

    /// AllocateCustomerCredit返回参数结构体
    public struct AllocateCustomerCreditResponse: TCResponse {
        /// 更新后的信用总额
        public let totalCredit: Float

        /// 更新后的信用余额
        public let remainingCredit: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCredit = "TotalCredit"
            case remainingCredit = "RemainingCredit"
            case requestId = "RequestId"
        }
    }

    /// 合作伙伴分配客户信用额度
    ///
    /// 合作伙伴可以为关联客户设置信用额度，包括调高额度、降低额度、设置额度为0
    /// 1、信用额度长期有效，不会定期清0；
    /// 2、可用信用额度为0，会触发客户停服，请谨慎操作；
    /// 3、如需限制客户新购，但不影响已购产品使用，可与渠道经理申请客户欠费不停服特权后，设置可用信用额度为0；
    /// 4、设置的额度，为当前可用信用额度的增量，最大不能超过合作伙伴可分配的剩余额度，设置负数代表回收额度，可用信用额度最低设置为0。
    @inlinable
    public func allocateCustomerCredit(_ input: AllocateCustomerCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateCustomerCreditResponse> {
        self.client.execute(action: "AllocateCustomerCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合作伙伴分配客户信用额度
    ///
    /// 合作伙伴可以为关联客户设置信用额度，包括调高额度、降低额度、设置额度为0
    /// 1、信用额度长期有效，不会定期清0；
    /// 2、可用信用额度为0，会触发客户停服，请谨慎操作；
    /// 3、如需限制客户新购，但不影响已购产品使用，可与渠道经理申请客户欠费不停服特权后，设置可用信用额度为0；
    /// 4、设置的额度，为当前可用信用额度的增量，最大不能超过合作伙伴可分配的剩余额度，设置负数代表回收额度，可用信用额度最低设置为0。
    @inlinable
    public func allocateCustomerCredit(_ input: AllocateCustomerCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateCustomerCreditResponse {
        try await self.client.execute(action: "AllocateCustomerCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合作伙伴分配客户信用额度
    ///
    /// 合作伙伴可以为关联客户设置信用额度，包括调高额度、降低额度、设置额度为0
    /// 1、信用额度长期有效，不会定期清0；
    /// 2、可用信用额度为0，会触发客户停服，请谨慎操作；
    /// 3、如需限制客户新购，但不影响已购产品使用，可与渠道经理申请客户欠费不停服特权后，设置可用信用额度为0；
    /// 4、设置的额度，为当前可用信用额度的增量，最大不能超过合作伙伴可分配的剩余额度，设置负数代表回收额度，可用信用额度最低设置为0。
    @inlinable
    public func allocateCustomerCredit(addedCredit: Float, clientUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateCustomerCreditResponse> {
        self.allocateCustomerCredit(.init(addedCredit: addedCredit, clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }

    /// 合作伙伴分配客户信用额度
    ///
    /// 合作伙伴可以为关联客户设置信用额度，包括调高额度、降低额度、设置额度为0
    /// 1、信用额度长期有效，不会定期清0；
    /// 2、可用信用额度为0，会触发客户停服，请谨慎操作；
    /// 3、如需限制客户新购，但不影响已购产品使用，可与渠道经理申请客户欠费不停服特权后，设置可用信用额度为0；
    /// 4、设置的额度，为当前可用信用额度的增量，最大不能超过合作伙伴可分配的剩余额度，设置负数代表回收额度，可用信用额度最低设置为0。
    @inlinable
    public func allocateCustomerCredit(addedCredit: Float, clientUin: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateCustomerCreditResponse {
        try await self.allocateCustomerCredit(.init(addedCredit: addedCredit, clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }
}
