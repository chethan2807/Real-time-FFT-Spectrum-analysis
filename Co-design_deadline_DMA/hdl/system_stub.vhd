-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB : in std_logic;
    processing_system7_0_PS_CLK : in std_logic;
    processing_system7_0_PS_PORB : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    i2s_ctrl_0_LRCLK_pin : out std_logic;
    i2s_ctrl_0_BCLK_pin : out std_logic;
    i2s_ctrl_0_SDATA_I_pin : in std_logic;
    i2s_ctrl_0_SDATA_O_pin : out std_logic;
    processing_system7_0_I2C0_SDA : inout std_logic;
    processing_system7_0_I2C0_SCL : inout std_logic;
    processing_system7_0_FCLK_CLK1_pin : out std_logic;
    axi_gpio_0_GPIO_IO_pin : inout std_logic_vector(1 downto 0);
    oled_bypass_ps2pl_0_OLED_VBAT_pin : out std_logic;
    oled_bypass_ps2pl_0_OLED_VDD_pin : out std_logic;
    oled_bypass_ps2pl_0_OLED_RES_pin : out std_logic;
    oled_bypass_ps2pl_0_OLED_DC_pin : out std_logic;
    oled_bypass_ps2pl_0_OLED_SCLK_pin : out std_logic;
    oled_bypass_ps2pl_0_OLED_SDIN_pin : out std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB : in std_logic;
      processing_system7_0_PS_CLK : in std_logic;
      processing_system7_0_PS_PORB : in std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic;
      i2s_ctrl_0_LRCLK_pin : out std_logic;
      i2s_ctrl_0_BCLK_pin : out std_logic;
      i2s_ctrl_0_SDATA_I_pin : in std_logic;
      i2s_ctrl_0_SDATA_O_pin : out std_logic;
      processing_system7_0_I2C0_SDA : inout std_logic;
      processing_system7_0_I2C0_SCL : inout std_logic;
      processing_system7_0_FCLK_CLK1_pin : out std_logic;
      axi_gpio_0_GPIO_IO_pin : inout std_logic_vector(1 downto 0);
      oled_bypass_ps2pl_0_OLED_VBAT_pin : out std_logic;
      oled_bypass_ps2pl_0_OLED_VDD_pin : out std_logic;
      oled_bypass_ps2pl_0_OLED_RES_pin : out std_logic;
      oled_bypass_ps2pl_0_OLED_DC_pin : out std_logic;
      oled_bypass_ps2pl_0_OLED_SCLK_pin : out std_logic;
      oled_bypass_ps2pl_0_OLED_SDIN_pin : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB => processing_system7_0_PS_SRSTB,
      processing_system7_0_PS_CLK => processing_system7_0_PS_CLK,
      processing_system7_0_PS_PORB => processing_system7_0_PS_PORB,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      i2s_ctrl_0_LRCLK_pin => i2s_ctrl_0_LRCLK_pin,
      i2s_ctrl_0_BCLK_pin => i2s_ctrl_0_BCLK_pin,
      i2s_ctrl_0_SDATA_I_pin => i2s_ctrl_0_SDATA_I_pin,
      i2s_ctrl_0_SDATA_O_pin => i2s_ctrl_0_SDATA_O_pin,
      processing_system7_0_I2C0_SDA => processing_system7_0_I2C0_SDA,
      processing_system7_0_I2C0_SCL => processing_system7_0_I2C0_SCL,
      processing_system7_0_FCLK_CLK1_pin => processing_system7_0_FCLK_CLK1_pin,
      axi_gpio_0_GPIO_IO_pin => axi_gpio_0_GPIO_IO_pin,
      oled_bypass_ps2pl_0_OLED_VBAT_pin => oled_bypass_ps2pl_0_OLED_VBAT_pin,
      oled_bypass_ps2pl_0_OLED_VDD_pin => oled_bypass_ps2pl_0_OLED_VDD_pin,
      oled_bypass_ps2pl_0_OLED_RES_pin => oled_bypass_ps2pl_0_OLED_RES_pin,
      oled_bypass_ps2pl_0_OLED_DC_pin => oled_bypass_ps2pl_0_OLED_DC_pin,
      oled_bypass_ps2pl_0_OLED_SCLK_pin => oled_bypass_ps2pl_0_OLED_SCLK_pin,
      oled_bypass_ps2pl_0_OLED_SDIN_pin => oled_bypass_ps2pl_0_OLED_SDIN_pin
    );

end architecture STRUCTURE;

