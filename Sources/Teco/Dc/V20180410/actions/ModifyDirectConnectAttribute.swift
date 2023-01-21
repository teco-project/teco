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

extension Dc {
    /// ModifyDirectConnectAttribute请求参数结构体
    public struct ModifyDirectConnectAttributeRequest: TCRequestModel {
        /// 物理专线的ID。
        public let directConnectId: String

        /// 物理专线名称。
        public let directConnectName: String?

        /// 运营商或者服务商为物理专线提供的电路编码。
        public let circuitCode: String?

        /// 物理专线调试VLAN。
        public let vlan: Int64?

        /// 物理专线调试腾讯侧互联 IP。
        public let tencentAddress: String?

        /// 物理专线调试用户侧互联 IP。
        public let customerAddress: String?

        /// 物理专线申请者姓名。默认从账户体系获取。
        public let customerName: String?

        /// 物理专线申请者联系邮箱。默认从账户体系获取。
        public let customerContactMail: String?

        /// 物理专线申请者联系号码。默认从账户体系获取。
        public let customerContactNumber: String?

        /// 报障联系人。
        public let faultReportContactPerson: String?

        /// 报障联系电话。
        public let faultReportContactNumber: String?

        /// 物理专线申请者补签用户使用协议
        public let signLaw: Bool?

        /// 物理专线带宽
        public let bandwidth: UInt64?

        public init(directConnectId: String, directConnectName: String? = nil, circuitCode: String? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, customerName: String? = nil, customerContactMail: String? = nil, customerContactNumber: String? = nil, faultReportContactPerson: String? = nil, faultReportContactNumber: String? = nil, signLaw: Bool? = nil, bandwidth: UInt64? = nil) {
            self.directConnectId = directConnectId
            self.directConnectName = directConnectName
            self.circuitCode = circuitCode
            self.vlan = vlan
            self.tencentAddress = tencentAddress
            self.customerAddress = customerAddress
            self.customerName = customerName
            self.customerContactMail = customerContactMail
            self.customerContactNumber = customerContactNumber
            self.faultReportContactPerson = faultReportContactPerson
            self.faultReportContactNumber = faultReportContactNumber
            self.signLaw = signLaw
            self.bandwidth = bandwidth
        }

        enum CodingKeys: String, CodingKey {
            case directConnectId = "DirectConnectId"
            case directConnectName = "DirectConnectName"
            case circuitCode = "CircuitCode"
            case vlan = "Vlan"
            case tencentAddress = "TencentAddress"
            case customerAddress = "CustomerAddress"
            case customerName = "CustomerName"
            case customerContactMail = "CustomerContactMail"
            case customerContactNumber = "CustomerContactNumber"
            case faultReportContactPerson = "FaultReportContactPerson"
            case faultReportContactNumber = "FaultReportContactNumber"
            case signLaw = "SignLaw"
            case bandwidth = "Bandwidth"
        }
    }

    /// ModifyDirectConnectAttribute返回参数结构体
    public struct ModifyDirectConnectAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改物理专线属性
    ///
    /// 修改物理专线的属性。
    @inlinable @discardableResult
    public func modifyDirectConnectAttribute(_ input: ModifyDirectConnectAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDirectConnectAttributeResponse> {
        self.client.execute(action: "ModifyDirectConnectAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改物理专线属性
    ///
    /// 修改物理专线的属性。
    @inlinable @discardableResult
    public func modifyDirectConnectAttribute(_ input: ModifyDirectConnectAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDirectConnectAttributeResponse {
        try await self.client.execute(action: "ModifyDirectConnectAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改物理专线属性
    ///
    /// 修改物理专线的属性。
    @inlinable @discardableResult
    public func modifyDirectConnectAttribute(directConnectId: String, directConnectName: String? = nil, circuitCode: String? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, customerName: String? = nil, customerContactMail: String? = nil, customerContactNumber: String? = nil, faultReportContactPerson: String? = nil, faultReportContactNumber: String? = nil, signLaw: Bool? = nil, bandwidth: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDirectConnectAttributeResponse> {
        self.modifyDirectConnectAttribute(ModifyDirectConnectAttributeRequest(directConnectId: directConnectId, directConnectName: directConnectName, circuitCode: circuitCode, vlan: vlan, tencentAddress: tencentAddress, customerAddress: customerAddress, customerName: customerName, customerContactMail: customerContactMail, customerContactNumber: customerContactNumber, faultReportContactPerson: faultReportContactPerson, faultReportContactNumber: faultReportContactNumber, signLaw: signLaw, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }

    /// 修改物理专线属性
    ///
    /// 修改物理专线的属性。
    @inlinable @discardableResult
    public func modifyDirectConnectAttribute(directConnectId: String, directConnectName: String? = nil, circuitCode: String? = nil, vlan: Int64? = nil, tencentAddress: String? = nil, customerAddress: String? = nil, customerName: String? = nil, customerContactMail: String? = nil, customerContactNumber: String? = nil, faultReportContactPerson: String? = nil, faultReportContactNumber: String? = nil, signLaw: Bool? = nil, bandwidth: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDirectConnectAttributeResponse {
        try await self.modifyDirectConnectAttribute(ModifyDirectConnectAttributeRequest(directConnectId: directConnectId, directConnectName: directConnectName, circuitCode: circuitCode, vlan: vlan, tencentAddress: tencentAddress, customerAddress: customerAddress, customerName: customerName, customerContactMail: customerContactMail, customerContactNumber: customerContactNumber, faultReportContactPerson: faultReportContactPerson, faultReportContactNumber: faultReportContactNumber, signLaw: signLaw, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }
}
